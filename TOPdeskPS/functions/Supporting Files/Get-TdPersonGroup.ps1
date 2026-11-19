function Get-TdPersonGroup {
    <#
.SYNOPSIS
    returns list of person groups
.DESCRIPTION
    Returns a list of person groups (GET /tas/api/persongroups, version 1 of the endpoint so the output keeps its shape).

    Without -Query the old filter parameters are sent. With -Query the request is a FIQL query; -Archived is then translated to FIQL and -NameFragment cannot be used.
.PARAMETER NameFragment
   Retrieve only person groups with name starting with this. No wildcards
.PARAMETER ResultSize
    The number of results that you want returned.
.PARAMETER Start
    The offset at which to start listing the operator groups at. This parameter is likely not used since Resultsize takes of this for you.
.PARAMETER Archived
    Specify whether you want archived person groups included
.PARAMETER Query
    A FIQL expression to select person groups, for example "branch.name==Delft". See https://developers.topdesk.com/tutorial.html#query

.EXAMPLE
    PS> Get-TdPersonGroup -ResultSize 500 -Archived
    returns up to 500 person groups. Includes archived groups
#>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPersonGroup')]


    param (
        [Parameter(Position = 0,
            ParameterSetName = 'List')]
        [string]$NameFragment,

        [Parameter(ParameterSetName = 'List')]
        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $ResultSize = 100,

        [Parameter(ParameterSetName = 'List')]
        [switch]
        $Archived,

        [Parameter(ParameterSetName = 'List')]
        [int]
        $Start = 0,

        [Parameter(ParameterSetName = 'List')]
        [string]
        $Query
    )

    process {
        Write-PsfMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level internalcomment
        Write-PSfMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -level internalcomment

        $parameter = [ordered]@{}
        if ($Query) {
            if ($NameFragment) {
                Stop-PSFFunction -Message '-NameFragment cannot be combined with -Query. Add a condition on the name to the query instead.' -EnableException $true -Cmdlet $PSCmdlet
            }
            $conditions = @()
            if (-not $Archived) { $conditions += 'archived==false' }
            $parameter['query'] = Join-TdFiql -Condition $conditions -Query $Query
        }
        else {
            if ($Archived) { $parameter['archived'] = $true }
            if ($NameFragment) { $parameter['name'] = $NameFragment }
        }

        Invoke-TdPagedRequest -Uri "$(Get-TdUrl)/tas/api/persongroups" -Parameter $parameter -StartParameter 'start' -SizeParameter 'page_size' -MaxPageSize 100 -ResultSize $ResultSize -Start $Start |
        Where-Object { $_.id }
    }
}
