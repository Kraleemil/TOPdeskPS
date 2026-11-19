function New-TdFiqlCondition {
    <#
    .SYNOPSIS
        Builds a single FIQL condition for a TOPdesk query.

    .DESCRIPTION
        Builds a single FIQL condition such as status==open, creationDate=ge=2024-01-01T00:00:00+00:00 or operator.id=in=(a,b).
        When more than one value is passed with the == operator the condition is turned into =in=(...), and != into =out=(...).
        Values are formatted with ConvertTo-TdFiqlValue.

    .PARAMETER Field
        The field to filter on, for example caller.id

    .PARAMETER Operator
        The FIQL operator. One of ==, !=, =gt=, =ge=, =lt=, =le=, =sw=, =in=, =out=

    .PARAMETER Value
        One or more values to compare with.

    .EXAMPLE
        PS C:\> New-TdFiqlCondition -Field 'operator.id' -Operator '==' -Value $id1, $id2

        Returns operator.id=in=(<id1>,<id2>)
    #>
    [CmdletBinding()]
    [OutputType([string])]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $Field,

        [ValidateSet('==', '!=', '=gt=', '=ge=', '=lt=', '=le=', '=sw=', '=in=', '=out=')]
        [string]
        $Operator = '==',

        [AllowNull()]
        [AllowEmptyString()]
        [object[]]
        $Value
    )

    if ($null -eq $Value) { $Value = @(, $null) }
    $values = @(foreach ($v in $Value) { ConvertTo-TdFiqlValue -Value $v })

    if ($Operator -eq '==' -and $values.Count -gt 1) { $Operator = '=in=' }
    if ($Operator -eq '!=' -and $values.Count -gt 1) { $Operator = '=out=' }

    if ($Operator -in '=in=', '=out=') {
        return '{0}{1}({2})' -f $Field, $Operator, ($values -join ',')
    }
    '{0}{1}{2}' -f $Field, $Operator, $values[0]
}
