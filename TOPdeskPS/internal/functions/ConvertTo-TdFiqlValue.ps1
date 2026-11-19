function ConvertTo-TdFiqlValue {
    <#
    .SYNOPSIS
        Formats a value so it can be used inside a TOPdesk FIQL query.

    .DESCRIPTION
        Converts a value into the textual form TOPdesk expects inside a FIQL expression.
        - DateTime values are converted to ISO 8601 with offset (yyyy-MM-ddTHH:mm:ss+01:00).
        - Booleans and switches become true / false.
        - Strings containing white space or one of the reserved characters ' " ( ) [ ] ; , = ! ~ < > are quoted with double quotes. Backslashes and double quotes inside the value are escaped with a backslash.
        - $null becomes null.

    .PARAMETER Value
        The value to convert.

    .EXAMPLE
        PS C:\> ConvertTo-TdFiqlValue -Value 'LAP 0001'

        Returns "LAP 0001" (quoted, because the value contains a space).
    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/ConvertTo-TdFiqlValue')]
    [OutputType([string])]
    param (
        [AllowNull()]
        [AllowEmptyString()]
        [object]
        $Value
    )

    if ($null -eq $Value) { return 'null' }
    if ($Value -is [System.Management.Automation.SwitchParameter]) { $Value = $Value.IsPresent }
    if ($Value -is [bool]) { return $Value.ToString().ToLower() }
    if ($Value -is [datetime]) { return $Value.ToString('yyyy-MM-ddTHH:mm:sszzz', [cultureinfo]::InvariantCulture) }
    if ($Value -is [System.DateTimeOffset]) { return $Value.ToString('yyyy-MM-ddTHH:mm:sszzz', [cultureinfo]::InvariantCulture) }
    if ($Value -is [System.IFormattable]) { $Value = $Value.ToString($null, [cultureinfo]::InvariantCulture) }

    $text = "$Value"
    if ($text -eq '' -or $text -match '[\s''"()\[\];,=!~<>]') {
        return '"{0}"' -f ($text.Replace('\', '\\').Replace('"', '\"'))
    }
    $text
}
