function Invoke-TdOperation {
    <#
    .SYNOPSIS
        Executes a command from the TOPdesk operations table.

    .DESCRIPTION
        The commands created from data/operations.json all call this function. It looks up the operation of the command and parameter set, then:
        - fills the path parameters into the url,
        - builds the query string, the JSON body (including nested and {id} reference properties) or the multipart form,
        - asks for confirmation for anything but GET,
        - pages through list endpoints with Invoke-TdPagedRequest, or sends a single request with Invoke-TdMethod.

    .PARAMETER Name
        Name of the command, for example Get-TdReservation.

    .PARAMETER ParameterSetName
        The parameter set the command was called with.

    .PARAMETER Parameter
        The bound parameters of the command ($PSBoundParameters).

    .PARAMETER Cmdlet
        The $PSCmdlet of the command, used for ShouldProcess.

    .EXAMPLE
        PS C:\> Invoke-TdOperation -Name $MyInvocation.MyCommand.Name -ParameterSetName $PSCmdlet.ParameterSetName -Parameter $PSBoundParameters -Cmdlet $PSCmdlet

        Runs the operation of the calling command.
    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Invoke-TdOperation')]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $Name,

        [string]
        $ParameterSetName,

        [Parameter(Mandatory = $true)]
        [System.Collections.IDictionary]
        $Parameter,

        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCmdlet]
        $Cmdlet
    )

    $command = $script:TdOperations[$Name]
    $operation = @($command.sets | Where-Object name -EQ $ParameterSetName)[0]
    if (-not $operation) { $operation = @($command.sets)[0] }
    Write-PSFMessage -Level InternalComment -Message "$Name -> $($operation.method) $($operation.path)"

    $path = $operation.path
    $query = [ordered]@{}
    # -Body holds extra properties; the other parameters are applied on top of a copy of it.
    $requestBody = @{}
    if ($operation.body -eq 'json' -and $Parameter['Body'] -is [System.Collections.IDictionary]) {
        foreach ($key in $Parameter['Body'].Keys) { $requestBody[$key] = $Parameter['Body'][$key] }
    }
    $form = [pscustomobject]@{}
    $target = $null

    foreach ($definition in $operation.params) {
        # [name, kind, api name, type, mandatory, reference, enum, help]
        $parameterName, $kind, $apiName = $definition[0], $definition[1], $definition[2]
        if (-not $Parameter.ContainsKey($parameterName)) { continue }
        $value = $Parameter[$parameterName]
        if ($value -is [System.Management.Automation.SwitchParameter]) { $value = $value.IsPresent }

        switch ($kind) {
            'path' {
                $path = $path.Replace("{$apiName}", (ConvertTo-TdUrlValue -Value "$value"))
                if ($null -eq $target) { $target = "$value" }
            }
            'query' {
                if ($parameterName -eq 'Fields') { $value = @($value) -join ',' }
                $query[$apiName] = $value
            }
            'body' {
                if ($definition[5]) { $value = @{ id = $value } }
                $node = $requestBody
                $keys = $apiName -split '\.'
                for ($i = 0; $i -lt $keys.Count - 1; $i++) {
                    # Copy nested objects from -Body before changing them, so the caller's hashtable stays as it was.
                    $child = @{}
                    if ($node[$keys[$i]] -is [System.Collections.IDictionary]) {
                        foreach ($key in $node[$keys[$i]].Keys) { $child[$key] = $node[$keys[$i]][$key] }
                    }
                    $node[$keys[$i]] = $child
                    $node = $child
                }
                $node[$keys[-1]] = $value
            }
            'form' {
                if ($value -is [bool]) { $value = $value.ToString().ToLower() }
                $form | Add-Member -MemberType NoteProperty -Name $apiName -Value $value
            }
        }
    }

    $uri = "$(Get-TdUrl)$path"

    if ($operation.list) {
        $start, $size, $maximum, $envelope = $operation.list
        $resultSize = if ($Parameter.ContainsKey('ResultSize')) { $Parameter['ResultSize'] } else { 100 }
        $pagedParams = @{
            Uri = $uri
            Parameter = $query
            StartParameter = $start
            SizeParameter = $size
            MaxPageSize = $maximum
            ResultSize = $resultSize
        }
        if ($start -and $Parameter.ContainsKey('Start')) { $pagedParams['Start'] = $Parameter['Start'] }
        if ($envelope) { $pagedParams['ResultProperty'] = $envelope }
        if ($operation.accept) { $pagedParams['Accept'] = $operation.accept }
        if (-not $size) {
            # The endpoint has no paging: one request, then limit the output.
            $pagedParams['MaxPageSize'] = 1
            $pagedParams['ResultSize'] = [int]::MaxValue
            Invoke-TdPagedRequest @pagedParams | Select-Object -First $resultSize
            return
        }
        Invoke-TdPagedRequest @pagedParams
        return
    }

    $queryString = ConvertTo-TdQueryString -Parameter $query
    if ($queryString) { $uri = "$uri`?$queryString" }
    $methodParams = @{
        Uri = $uri
        Method = (Get-Culture).TextInfo.ToTitleCase($operation.method.ToLower())
    }
    if ($operation.accept) { $methodParams['Accept'] = $operation.accept }
    if ($operation.download) { $methodParams['OutFile'] = $Parameter['OutFile'] }

    switch ($operation.body) {
        'json' {
            $body = $Parameter['Body']
            if ($null -ne $body -and $body -isnot [System.Collections.IDictionary]) {
                # The whole body, for example an array.
                $requestBody = $body
            }
            if ($operation.bodyRequired -or @($requestBody.Keys).Count -gt 0 -or $requestBody -isnot [System.Collections.IDictionary]) {
                $methodParams['Body'] = ConvertTo-Json -InputObject $requestBody -Depth 10
            }
            if ($operation.contentType) { $methodParams['ContentType'] = $operation.contentType }
        }
        'patch' {
            $methodParams['Body'] = ConvertTo-Json -InputObject @($Parameter['Body']) -Depth 10
            $methodParams['ContentType'] = $operation.contentType
            if (-not $operation.contentType) { $methodParams['ContentType'] = 'application/json-patch+json' }
        }
        'form' {
            $methodParams['File'] = (Resolve-Path -LiteralPath $Parameter['File']).ProviderPath
            $methodParams['Body'] = $form
        }
    }

    if ($operation.method -ne 'GET') {
        if ($null -eq $target) { $target = $uri }
        if (-not (Test-PSFShouldProcess -PSCmdlet $Cmdlet -Target $target -Action $operation.summary)) { return }
    }
    Invoke-TdMethod @methodParams
}
