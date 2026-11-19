function Invoke-TdPagedRequest {
    <#
    .SYNOPSIS
        Sends GET requests to a TOPdesk list endpoint until enough results are returned.

    .DESCRIPTION
        Wraps Invoke-TdMethod for TOPdesk list endpoints. TOPdesk uses several paging styles (pageStart/pageSize, start/page_size, offset/pageSize, $top) and several response shapes (a plain array, or an object with results, dataSet, items or item).
        This function requests pages until ResultSize items have been returned, the API returns a page that is smaller than requested, or the API returns no content.
        Items are written to the pipeline one by one.

    .PARAMETER Uri
        The endpoint url without query string, for example https://company.topdesk.net/tas/api/incidents

    .PARAMETER Parameter
        Additional query parameters (not the paging parameters). Values are URL encoded by ConvertTo-TdQueryString.

    .PARAMETER StartParameter
        Name of the query parameter holding the offset, for example pageStart, start or offset. Leave empty for endpoints that only support a page size; then a single request is sent.

    .PARAMETER SizeParameter
        Name of the query parameter holding the page size, for example pageSize, page_size or $top.

    .PARAMETER MaxPageSize
        The largest page size the endpoint accepts.

    .PARAMETER ResultSize
        The total amount of items to return. Use [int]::MaxValue to return everything.

    .PARAMETER Start
        The offset of the first item to return.

    .PARAMETER ResultProperty
        Name of the property that holds the items when the endpoint wraps them in an object (results, dataSet, items, item). When empty the function detects these property names automatically.

    .PARAMETER Accept
        Value for the Accept header, used for endpoints that need a versioned media type.

    .PARAMETER TypeName
        Optional type name added to every returned item.

    .EXAMPLE
        PS C:\> Invoke-TdPagedRequest -Uri "$(Get-TdUrl)/tas/api/incidents" -Parameter @{ query = 'closed==false' } -StartParameter pageStart -SizeParameter pageSize -MaxPageSize 10000 -ResultSize 500

        Returns the first 500 open incidents.
    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Invoke-TdPagedRequest')]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $Uri,

        [System.Collections.IDictionary]
        $Parameter,

        [AllowEmptyString()]
        [string]
        $StartParameter = 'pageStart',

        [string]
        $SizeParameter = 'pageSize',

        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $MaxPageSize = 100,

        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $ResultSize = 10,

        [ValidateRange(0, [int]::MaxValue)]
        [int]
        $Start = 0,

        [string]
        $ResultProperty,

        [string]
        $Accept,

        [string]
        $TypeName
    )

    $count = 0
    $offset = $Start
    $knownEnvelopes = 'results', 'dataSet', 'items', 'item'

    do {
        $pageSize = [math]::Min($MaxPageSize, $ResultSize - $count)
        $query = [ordered]@{}
        if ($Parameter) { foreach ($key in $Parameter.Keys) { $query[$key] = $Parameter[$key] } }
        if ($StartParameter) { $query[$StartParameter] = $offset }
        if ($SizeParameter) { $query[$SizeParameter] = $pageSize }

        $queryString = ConvertTo-TdQueryString -Parameter $query
        $pageUri = if ($queryString) { "$Uri$(if ($Uri.Contains('?')) { '&' } else { '?' })$queryString" } else { $Uri }
        Write-PSFMessage -Level InternalComment -Message "Requesting $pageUri"

        $methodParams = @{ Uri = $pageUri }
        if ($Accept) { $methodParams['Accept'] = $Accept }
        $response = Invoke-TdMethod @methodParams

        # 204 No Content (or an empty body) means there is nothing (more) to return.
        if ($null -eq $response -or ($response -is [string] -and [string]::IsNullOrWhiteSpace($response))) { break }

        $items = $response
        if ($response -isnot [array]) {
            $property = $ResultProperty
            if (-not $property) {
                $property = $knownEnvelopes | Where-Object { $response.PSObject.Properties.Name -contains $_ } | Select-Object -First 1
            }
            if ($property) { $items = $response.$property }
        }
        $items = @($items | Where-Object { $null -ne $_ })

        foreach ($item in $items) {
            if ($count -ge $ResultSize) { break }
            if ($TypeName) { $item.PSObject.TypeNames.Insert(0, $TypeName) }
            $item
            $count++
        }

        $offset += $items.Count
        $finished = (-not $StartParameter) -or ($items.Count -lt $pageSize) -or ($count -ge $ResultSize)
    }
    until ($finished)
}
