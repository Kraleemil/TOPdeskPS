function ConvertTo-TdOperationScript {
    <#
    .SYNOPSIS
        Turns a command from the TOPdesk operations table into PowerShell code.

    .DESCRIPTION
        Returns the text of a function, with comment-based help, CmdletBinding, parameter sets and validation, whose body calls Invoke-TdOperation.
        internal/scripts/operations.ps1 uses it at import to create the commands listed in data/operations.json.

    .PARAMETER Command
        One entry of data/operations.json.

    .EXAMPLE
        PS C:\> ConvertTo-TdOperationScript -Command $script:TdOperations['Get-TdReservation']

        Returns the code of Get-TdReservation.
    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/ConvertTo-TdOperationScript')]
    [OutputType([string])]
    param (
        [Parameter(Mandatory = $true)]
        $Command
    )

    $quote = { param ($Text) "'" + "$Text".Replace("'", "''") + "'" }
    $sets = @($Command.sets)
    $multiple = $sets.Count -gt 1
    $writes = @($sets | Where-Object method -NE 'GET').Count -gt 0
    $highImpact = $Command.name -like 'Remove-*' -or @($sets | Where-Object method -EQ 'DELETE').Count -gt 0
    $defaultSet = if ($sets.name -contains 'Default') { 'Default' } else { $sets[0].name }

    # Parameters in order of first appearance, with the parameter sets they belong to.
    $parameters = [ordered]@{}
    foreach ($set in $sets) {
        foreach ($definition in $set.params) {
            if (-not $parameters.Contains($definition[0])) { $parameters[$definition[0]] = [System.Collections.ArrayList]::new() }
            $null = $parameters[$definition[0]].Add([pscustomobject]@{ Set = $set.name; Definition = $definition })
        }
    }

    $lines = [System.Collections.Generic.List[string]]::new()
    $lines.Add("function $($Command.name) {")
    $lines.Add('    <#')
    $lines.Add('    .SYNOPSIS')
    $lines.Add("        $($Command.synopsis)")
    $lines.Add('    .DESCRIPTION')
    foreach ($set in $sets) {
        $lines.Add("        $($set.method) $($set.path)$(if ($multiple) { " (parameter set $($set.name))" }): $($set.summary)")
    }
    $lines.Add('        Generated from the official TOPdesk API specification, see docs/api-coverage.md.')
    foreach ($name in $parameters.Keys) {
        $lines.Add("    .PARAMETER $name")
        $lines.Add("        $($parameters[$name][0].Definition[7])")
    }
    if ($writes) {
        $lines.Add('    .PARAMETER WhatIf')
        $lines.Add('        Shows what would happen if the command runs. The command is not run.')
        $lines.Add('    .PARAMETER Confirm')
        $lines.Add('        Prompts you for confirmation before running the command.')
    }
    $example = @($Command.name)
    foreach ($definition in $sets[0].params | Where-Object { $_[4] }) {
        $example += switch ($definition[1]) {
            'switch' { "-$($definition[0])" }
            'file' { "-$($definition[0]) '.\file.txt'" }
            default {
                if ($definition[0] -eq 'OutFile') { "-OutFile '.\download.bin'" }
                else { "-$($definition[0]) `$$($definition[0].Substring(0, 1).ToLower() + $definition[0].Substring(1))" }
            }
        }
    }
    $lines.Add('    .EXAMPLE')
    $lines.Add("        PS C:\> $($example -join ' ')")
    $lines.Add('')
    $lines.Add("        $($sets[0].summary)")
    $lines.Add('    .LINK')
    $lines.Add("        https://developers.topdesk.com/explorer/?page=$($Command.area)")
    $lines.Add('    #>')

    $binding = @()
    if ($multiple) { $binding += "DefaultParameterSetName = $(& $quote $defaultSet)" }
    $binding += "HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/$($Command.name)'"
    if ($writes) { $binding += 'SupportsShouldProcess = $true' }
    if ($highImpact) { $binding += "ConfirmImpact = 'High'" }
    $lines.Add("    [CmdletBinding($($binding -join ', '))]")
    $lines.Add('    param (')

    $blocks = foreach ($name in $parameters.Keys) {
        $block = [System.Collections.Generic.List[string]]::new()
        foreach ($usage in $parameters[$name]) {
            $arguments = @()
            if ($usage.Definition[4]) { $arguments += 'Mandatory = $true' }
            if ($multiple) { $arguments += "ParameterSetName = $(& $quote $usage.Set)" }
            if ($usage.Definition[1] -eq 'path' -and $name -in 'Id', 'Number') { $arguments += 'ValueFromPipelineByPropertyName = $true' }
            $attribute = "        [Parameter($($arguments -join ', '))]"
            if (-not $block.Contains($attribute)) { $block.Add($attribute) }
        }
        $definition = $parameters[$name][0].Definition
        if ($definition[6]) { $block.Add("        [ValidateSet($((@($definition[6]) | ForEach-Object { & $quote $_ }) -join ', '))]") }
        if ($name -eq 'ResultSize') { $block.Add('        [ValidateRange(1, [int]::MaxValue)]') }
        if ($name -eq 'Start') { $block.Add('        [ValidateRange(0, [int]::MaxValue)]') }
        if ($definition[1] -eq 'file') { $block.Add('        [ValidateScript( { Test-Path -LiteralPath $_ -PathType Leaf })]') }
        $block.Add("        [$($definition[3])]")
        $default = switch ($name) { 'ResultSize' { ' = 100' } 'Start' { ' = 0' } default { '' } }
        $block.Add("        `$$name$default")
        $block -join "`n"
    }
    $lines.Add((@($blocks) -join ",`n`n"))
    $lines.Add('    )')
    $lines.Add('    process {')
    $lines.Add("        Invoke-TdOperation -Name $(& $quote $Command.name) -ParameterSetName `$PSCmdlet.ParameterSetName -Parameter `$PSBoundParameters -Cmdlet `$PSCmdlet")
    $lines.Add('    }')
    $lines.Add('}')
    $lines -join "`n"
}
