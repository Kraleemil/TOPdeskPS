<#
.SYNOPSIS
    Writes the markdown command reference in docs/commands from the comment-based help.

.DESCRIPTION
    Produces one markdown file per exported command in the same layout platyPS uses
    (docs/commands/TOPdeskPS/<Command>.md) and the index docs/commands/TOPdeskPS.md.
    Use this when platyPS is not available; New-MarkdownHelp produces equivalent files.

.EXAMPLE
    PS C:\> ./build/New-TdCommandDoc.ps1

    Regenerates the command reference.
#>
[CmdletBinding()]
param (
    [string]
    $ModulePath = (Join-Path $PSScriptRoot '..\TOPdeskPS\TOPdeskPS.psd1'),

    [string]
    $OutputPath = (Join-Path $PSScriptRoot '..\docs\commands')
)

$module = Import-Module $ModulePath -Force -PassThru
$commandFolder = Join-Path $OutputPath 'TOPdeskPS'
$null = New-Item -ItemType Directory -Path $commandFolder -Force
$common = [System.Management.Automation.PSCmdlet]::CommonParameters + [System.Management.Automation.PSCmdlet]::OptionalCommonParameters

function ConvertTo-DocText {
    param ($Text)
    (($Text | Out-String) -split "`r?`n" | ForEach-Object { $_.TrimEnd() }) -join "`n" -replace "(`n){3,}", "`n`n" | ForEach-Object { $_.Trim() }
}

$names = $module.ExportedCommands.Keys | Sort-Object
foreach ($name in $names) {
    $command = Get-Command $name
    $help = Get-Help $name -Full
    $sb = [System.Text.StringBuilder]::new()
    $null = $sb.AppendLine('---')
    $null = $sb.AppendLine('external help file: TOPdeskPS-help.xml')
    $null = $sb.AppendLine('Module Name: TOPdeskPS')
    $null = $sb.AppendLine("online version: $($command.HelpUri)")
    $null = $sb.AppendLine('schema: 2.0.0')
    $null = $sb.AppendLine('---')
    $null = $sb.AppendLine()
    $null = $sb.AppendLine("# $name")
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## SYNOPSIS')
    $null = $sb.AppendLine((ConvertTo-DocText $help.Synopsis))
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## SYNTAX')
    foreach ($set in $command.ParameterSets) {
        $null = $sb.AppendLine()
        if ($command.ParameterSets.Count -gt 1) {
            $null = $sb.AppendLine("### $($set.Name)$(if ($set.IsDefault) { ' (Default)' })")
        }
        $null = $sb.AppendLine('```')
        $null = $sb.AppendLine(("$name $($set.ToString())" -replace '\s+', ' ').Trim())
        $null = $sb.AppendLine('```')
    }
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## DESCRIPTION')
    $null = $sb.AppendLine((ConvertTo-DocText ($help.Description.Text -join "`n")))
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## EXAMPLES')
    $i = 0
    foreach ($example in $help.Examples.Example) {
        $i++
        $code = ConvertTo-DocText $example.Code
        $remarks = ConvertTo-DocText ($example.Remarks.Text -join "`n")
        # PowerShell 6+ keeps the description below the code inside .Code when there is no blank line.
        if (-not $remarks -and $code -match "`n") {
            $first, $rest = $code -split "`n", 2
            $code, $remarks = $first, $rest.Trim()
        }
        $null = $sb.AppendLine()
        $null = $sb.AppendLine("### EXAMPLE $i")
        $null = $sb.AppendLine('```')
        $null = $sb.AppendLine(($code -replace '^PS [^>]*>\s*', ''))
        $null = $sb.AppendLine('```')
        $null = $sb.AppendLine()
        $null = $sb.AppendLine($remarks)
    }
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## PARAMETERS')
    foreach ($parameter in $command.Parameters.Values | Where-Object Name -NotIn $common) {
        $parameterHelp = $help.Parameters.Parameter | Where-Object Name -EQ $parameter.Name
        $attributes = $parameter.Attributes | Where-Object { $_ -is [System.Management.Automation.ParameterAttribute] }
        $sets = ($attributes.ParameterSetName | Sort-Object -Unique) -join ', '
        if ($sets -eq '__AllParameterSets') { $sets = '(All)' }
        $null = $sb.AppendLine()
        $null = $sb.AppendLine("### -$($parameter.Name)")
        $null = $sb.AppendLine((ConvertTo-DocText ($parameterHelp.Description.Text -join "`n")))
        $null = $sb.AppendLine()
        $null = $sb.AppendLine('```yaml')
        $null = $sb.AppendLine("Type: $($parameter.ParameterType.Name)")
        $null = $sb.AppendLine("Parameter Sets: $sets")
        $null = $sb.AppendLine("Aliases: $($parameter.Aliases -join ', ')")
        $null = $sb.AppendLine()
        $null = $sb.AppendLine("Required: $([bool]($attributes | Where-Object Mandatory))")
        $position = ($attributes | Where-Object { $_.Position -ge 0 } | Select-Object -First 1).Position
        $null = $sb.AppendLine("Position: $(if ($null -ne $position) { $position + 1 } else { 'Named' })")
        $null = $sb.AppendLine("Default value: $($parameterHelp.DefaultValue)")
        $pipeline = @()
        if ($attributes | Where-Object ValueFromPipeline) { $pipeline += 'ByValue' }
        if ($attributes | Where-Object ValueFromPipelineByPropertyName) { $pipeline += 'ByPropertyName' }
        $null = $sb.AppendLine("Accept pipeline input: $(if ($pipeline) { "True ($($pipeline -join ', '))" } else { 'False' })")
        $null = $sb.AppendLine('Accept wildcard characters: False')
        $null = $sb.AppendLine('```')
    }
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('### CommonParameters')
    $null = $sb.AppendLine('This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.')
    $null = $sb.AppendLine('For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).')
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## INPUTS')
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## OUTPUTS')
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## NOTES')
    $null = $sb.AppendLine()
    $null = $sb.AppendLine('## RELATED LINKS')
    foreach ($link in $help.relatedLinks.navigationLink.uri | Where-Object { $_ }) {
        $null = $sb.AppendLine()
        $null = $sb.AppendLine("[$link]($link)")
    }
    $text = ($sb.ToString() -split "`r?`n" | ForEach-Object { $_.TrimEnd() }) -join "`n"
    [System.IO.File]::WriteAllText((Join-Path $commandFolder "$name.md"), $text.TrimEnd() + "`n", [System.Text.UTF8Encoding]::new($false))
}

# Remove pages of commands that no longer exist.
Get-ChildItem $commandFolder -Filter '*.md' | Where-Object BaseName -NotIn $names | Remove-Item

$index = @('# TOPdeskPS Command Reference', '') + ($names | ForEach-Object { " - [$_](TOPdeskPS/$_.html)" })
[System.IO.File]::WriteAllText((Join-Path $OutputPath 'TOPdeskPS.md'), (($index -join "`n") + "`n"), [System.Text.UTF8Encoding]::new($false))
