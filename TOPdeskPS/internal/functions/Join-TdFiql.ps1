function Join-TdFiql {
    <#
    .SYNOPSIS
        Combines FIQL conditions with AND.

    .DESCRIPTION
        Joins FIQL conditions with ; (AND). Empty conditions are skipped.
        A raw query supplied by the user (for example through a -Query parameter) is wrapped in brackets so OR expressions inside it keep their meaning.
        Returns an empty string when there is nothing to join.

    .PARAMETER Condition
        The FIQL conditions to join.

    .PARAMETER Query
        An additional raw FIQL expression to AND with the conditions.

    .EXAMPLE
        PS C:\> Join-TdFiql -Condition 'closed==false', 'operator.id==null' -Query 'a==1,b==2'

        Returns closed==false;operator.id==null;(a==1,b==2)
    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Join-TdFiql')]
    [OutputType([string])]
    param (
        [AllowNull()]
        [AllowEmptyCollection()]
        [string[]]
        $Condition,

        [AllowNull()]
        [AllowEmptyString()]
        [string]
        $Query
    )

    $parts = [System.Collections.Generic.List[string]]::new()
    foreach ($c in $Condition) { if (-not [string]::IsNullOrWhiteSpace($c)) { $parts.Add($c) } }
    if (-not [string]::IsNullOrWhiteSpace($Query)) {
        if ($parts.Count -gt 0) { $parts.Add("($Query)") }
        else { $parts.Add($Query) }
    }
    $parts -join ';'
}
