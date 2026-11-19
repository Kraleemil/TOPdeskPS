param (
    $Show = "None",

    # Folder for NUnit XML result files (one per test file), for example for CI.
    [string]
    $OutputPath
)

Write-Host "Starting Tests" -ForegroundColor Green
if ($OutputPath) { $null = New-Item -ItemType Directory -Path $OutputPath -Force }

# Splatted into every Invoke-Pester call so results are also written to $OutputPath.
function Get-PesterOutputParameter {
    param ($File)
    if (-not $OutputPath) { return @{} }
    @{ OutputFormat = 'NUnitXml'; OutputFile = (Join-Path $OutputPath "$($File.Directory.Name).$($File.BaseName).xml") }
}

Write-PSFMessage -Level Important -Message "Importing Module"

Remove-Module TOPdeskPS -ErrorAction Ignore
Import-Module "$PSScriptRoot\..\TOPdeskPS.psd1"
Import-Module "$PSScriptRoot\..\TOPdeskPS.psm1" -Force

$totalFailed = 0
$totalRun = 0

$testresults = @()

Write-PSFMessage -Level Important -Message "Modules imported, proceeding with general tests"
foreach ($file in (Get-ChildItem "$PSScriptRoot\general" -Filter "*.Tests.ps1")) {
    Write-PSFMessage -Level Significant -Message "  Executing <c='em'>$($file.Name)</c>"
    $outputParameter = Get-PesterOutputParameter -File $file
    $results = Invoke-Pester -Script $file.FullName -Show $Show -PassThru @outputParameter
    foreach ($result in $results) {
        $totalRun += $result.TotalCount
        $totalFailed += $result.FailedCount
        $result.TestResult | Where-Object { -not $_.Passed } | ForEach-Object {
            $name = $_.Name
            $testresults += [pscustomobject]@{
                Describe = $_.Describe
                Context = $_.Context
                Name = "It $name"
                Result = $_.Result
                Message = $_.FailureMessage
            }
        }
    }
}

Write-PSFMessage -Level Important -Message "Proceeding with individual tests"
foreach ($file in (Get-ChildItem "$PSScriptRoot\functions" -Recurse -File -Filter "*.Tests.ps1")) {
    Write-PSFMessage -Level Significant -Message "  Executing $($file.Name)"
    $outputParameter = Get-PesterOutputParameter -File $file
    $results = Invoke-Pester -Script $file.FullName -Show None -PassThru @outputParameter
    foreach ($result in $results) {
        $totalRun += $result.TotalCount
        $totalFailed += $result.FailedCount
        $result.TestResult | Where-Object { -not $_.Passed } | ForEach-Object {
            $name = $_.Name
            $testresults += [pscustomobject]@{
                Describe = $_.Describe
                Context = $_.Context
                Name = "It $name"
                Result = $_.Result
                Message = $_.FailureMessage
            }
        }
    }
}

$testresults | Sort-Object Describe, Context, Name, Result, Message | Format-List

# In GitHub Actions, list the failures on the job summary page.
if ($env:GITHUB_STEP_SUMMARY) {
    $summary = @("### Pester on PowerShell $($PSVersionTable.PSVersion) ($($PSVersionTable.PSEdition))", '', "$($totalRun - $totalFailed) of $totalRun tests passed.", '')
    if ($testresults) {
        $summary += '| Describe | Test | Message |', '| --- | --- | --- |'
        $summary += $testresults | Select-Object -First 200 | ForEach-Object {
            '| {0} | {1} | {2} |' -f $_.Describe, $_.Name, ((($_.Message -split "`n")[0]) -replace '\|', '/')
        }
    }
    Add-Content -Path $env:GITHUB_STEP_SUMMARY -Value ($summary -join "`n") -Encoding UTF8
}

if ($totalFailed -eq 0) { Write-PSFMessage -Level Critical -Message "All <c='em'>$totalRun</c> tests executed without a single failure!" }
else { Write-PSFMessage -Level Critical -Message "<c='em'>$totalFailed tests</c> out of <c='sub'>$totalRun</c> tests failed!" }

if ($totalFailed -gt 0) {
    throw "$totalFailed / $totalRun tests failed!"
}
