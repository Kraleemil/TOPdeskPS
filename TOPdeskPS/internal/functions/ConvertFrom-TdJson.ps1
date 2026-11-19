function ConvertFrom-TdJson {
    <#
    .SYNOPSIS
        Converts a JSON string from TOPdesk into PowerShell objects.

    .DESCRIPTION
        Uses ConvertFrom-Json, so the objects look exactly like the ones Invoke-RestMethod returns on the running PowerShell version.
        Windows PowerShell 5.1's ConvertFrom-Json refuses strings longer than 2097152 characters. For those it uses JavaScriptSerializer without that limit and converts the result to PSCustomObjects, so large result pages keep working.

    .PARAMETER Json
        The JSON text.

    .EXAMPLE
        PS C:\> ConvertFrom-TdJson -Json '{"name":"Søren"}'

        Returns an object with the property name = Søren.
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [AllowEmptyString()]
        [string]
        $Json
    )

    if ([string]::IsNullOrWhiteSpace($Json)) { return }

    if ($PSVersionTable.PSVersion.Major -ge 6 -or $Json.Length -lt 2097152) {
        ConvertFrom-Json -InputObject $Json
        return
    }

    Add-Type -AssemblyName System.Web.Extensions
    $serializer = New-Object -TypeName System.Web.Script.Serialization.JavaScriptSerializer
    $serializer.MaxJsonLength = [int]::MaxValue
    $serializer.RecursionLimit = 1000

    $convert = {
        param ($Item)
        if ($Item -is [System.Collections.IDictionary]) {
            $properties = [ordered]@{}
            foreach ($key in $Item.Keys) { $properties[$key] = & $convert $Item[$key] }
            return [pscustomobject]$properties
        }
        if ($Item -is [System.Collections.IList] -and $Item -isnot [string]) {
            $list = foreach ($element in $Item) { , (& $convert $element) }
            return , @($list)
        }
        $Item
    }
    Write-Output -InputObject (& $convert $serializer.DeserializeObject($Json)) -NoEnumerate
}
