function Get-TdChangeActivity {
    <#
	.SYNOPSIS
		Gets change activities
	.DESCRIPTION
        This command returns change activities from GET /tas/api/operatorChangeActivities. This returns activities available to the account used with Connect-TdService.

        The filter parameters are translated into a FIQL query (the query parameter), because TOPdesk has deprecated the old filter parameters of this endpoint. You can add your own FIQL with -Query; it is combined with the other filters using AND.
    .PARAMETER Change
        Id or number of the parent change
        This is a repeatable filter parameter
    .PARAMETER Archived
		Whether to only retrieve archived activities or not. Specify -Archived:$false to return only active activities.
    .PARAMETER Query
        A FIQL expression to select activities, for example "status.name==Planned;blocked==false". See the query parameter of GET /tas/api/operatorChangeActivities for the available fields.
    .PARAMETER Fields
        The fields to return, for example 'id','number','briefDescription'. Use 'all' to return all fields.
    .PARAMETER Sort
        Sort order, for example 'plannedFinalDate:asc'.
    .PARAMETER ResultSize
        The amount of activities to return. Default is 1000, which is also what the API returned before when no page size was given. Use [int]::MaxValue to return all activities.
    .PARAMETER Start
        The offset at which to start listing activities.
	.EXAMPLE
		PS C:\> Get-TdChangeActivity -Change 'C1801-123'

		Grabs change activities for C1801-123
	.EXAMPLE
		PS C:\> Get-TdChangeActivity -Query 'operatorGroup.name==Servicedesk;open==true'

		Returns the open activities assigned to the operator group Servicedesk.
#>

    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeActivity')]
    param
    (
        [Parameter(ValueFromPipelineByPropertyName)]
        [Alias('id')]
        [system.string[]]$Change,

        [switch]
        $Archived,

        [string]
        $Query,

        [string[]]
        $Fields,

        [string]
        $Sort,

        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $ResultSize = 1000,

        [ValidateRange(0, [int]::MaxValue)]
        [int]
        $Start = 0
    )

    process {
        Write-PSFMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level Debug
        Write-PSFMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -Level Debug

        $conditions = [System.Collections.Generic.List[string]]::new()
        if ($Change) {
            # The old filter accepted ids and numbers, FIQL has a field for each.
            $ids = @($Change | Where-Object { $_ -as [guid] })
            $numbers = @($Change | Where-Object { -not ($_ -as [guid]) })
            $changeConditions = @()
            if ($ids) { $changeConditions += New-TdFiqlCondition -Field 'change.id' -Value $ids }
            if ($numbers) { $changeConditions += New-TdFiqlCondition -Field 'change.number' -Value $numbers }
            if ($changeConditions.Count -gt 1) { $conditions.Add("($($changeConditions -join ','))") }
            else { $conditions.Add($changeConditions[0]) }
        }
        if ($PSBoundParameters.Keys -contains 'Archived') { $conditions.Add((New-TdFiqlCondition -Field 'archived' -Value $Archived.IsPresent)) }

        $parameter = [ordered]@{}
        $fiql = Join-TdFiql -Condition $conditions -Query $Query
        if ($fiql) { $parameter['query'] = $fiql }
        if ($Fields) { $parameter['fields'] = $Fields -join ',' }
        if ($Sort) { $parameter['sort'] = $Sort }

        Invoke-TdPagedRequest -Uri "$(Get-TdUrl)/tas/api/operatorChangeActivities" -Parameter $parameter -StartParameter 'pageStart' -SizeParameter 'pageSize' -MaxPageSize 5000 -ResultSize $ResultSize -Start $Start -ResultProperty 'results'
    }

}
