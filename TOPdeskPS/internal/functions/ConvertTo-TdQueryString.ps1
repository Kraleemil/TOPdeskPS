function ConvertTo-TdQueryString {
    <#
    .SYNOPSIS
        Builds a URL query string from a dictionary.

    .DESCRIPTION
        Builds a URL query string (without the leading ?) from a dictionary of parameter names and values.
        - Values are URL encoded.
        - Arrays produce the parameter once per value (name=a&name=b).
        - Booleans and switches become true / false, DateTime values become ISO 8601 with offset.
        - $null values are skipped.

    .PARAMETER Parameter
        Dictionary (ordered or not) with the query parameters.

    .EXAMPLE
        PS C:\> ConvertTo-TdQueryString -Parameter ([ordered]@{ query = 'closed==false'; pageSize = 100 })

        Returns query=closed%3D%3Dfalse&pageSize=100
    #>
    [CmdletBinding()]
    [OutputType([string])]
    param (
        [AllowNull()]
        [System.Collections.IDictionary]
        $Parameter
    )

    if (-not $Parameter) { return '' }
    $pairs = foreach ($key in $Parameter.Keys) {
        foreach ($value in @($Parameter[$key])) {
            if ($null -eq $value) { continue }
            if ($value -is [System.Management.Automation.SwitchParameter]) { $value = $value.IsPresent }
            if ($value -is [bool]) { $text = $value.ToString().ToLower() }
            elseif ($value -is [datetime]) { $text = $value.ToString('yyyy-MM-ddTHH:mm:sszzz', [cultureinfo]::InvariantCulture) }
            elseif ($value -is [System.IFormattable]) { $text = $value.ToString($null, [cultureinfo]::InvariantCulture) }
            else { $text = "$value" }
            '{0}={1}' -f [uri]::EscapeDataString("$key"), [uri]::EscapeDataString($text)
        }
    }
    @($pairs) -join '&'
}
