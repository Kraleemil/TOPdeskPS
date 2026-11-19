function Get-TdChange {
    <#
.SYNOPSIS
    Returns changes

.DESCRIPTION
    Returns changes from GET /tas/api/operatorChanges.

    The filter parameters are translated into a FIQL query (the query parameter), because TOPdesk has deprecated the old filter parameters of this endpoint. You can add your own FIQL with -Query; it is combined with the other filters using AND.

    -Id and -Status have no FIQL field. When you use one of them the command falls back to the old (deprecated) filter parameters, and it can then not be combined with -Query.

.PARAMETER Id
    The internal ID(s) of the change(s) to return.

.PARAMETER ClosedDate
    If specified, only changes that were closed on or after the given date are returned.

.PARAMETER OperatorGroupId
    If specified, only changes assigned to the given operator group(s) will be returned.

.PARAMETER OperatorId
    If specified, only changes assigned to the given operator(s) will be returned.

.PARAMETER ChangeType
    If specified, only changes of the supplied type(s) will be returned.

.PARAMETER Phase
    If specified, only changes in the supplied phase(s) will be returned.

.PARAMETER Status
    If specified, only changes in the supplied status(es) will be returned.

.PARAMETER Open
    If specified, only changes that are open will be returned. Specify -Open:$false to return only closed changes.

.PARAMETER Archived
    If specified, only changes that are archived will be returned. Specify -Archived:$false to return only active changes.

.PARAMETER Query
    A FIQL expression to select changes, for example "briefDescription=sw=Server;urgent==true". See the query parameter of GET /tas/api/operatorChanges for the available fields.

.PARAMETER Fields
    The fields to return, for example 'id','number','briefDescription'. Use 'all' to return all fields.

.PARAMETER Sort
    Sort order, for example 'creationDate:desc' or 'simple.closedDate:asc'.

.PARAMETER ResultSize
    The amount of changes to return. Default is 1000, which is also what the API returned before when no page size was given. Use [int]::MaxValue to return all changes.

.PARAMETER Start
    The offset at which to start listing changes.

.EXAMPLE
    PS C:\> Get-TdChange

    Returns up to 1000 changes.

.EXAMPLE
    PS C:\> Get-TdChange -Open -OperatorGroupId $groupId -ResultSize ([int]::MaxValue)

    Returns all open changes assigned to the operator group.
#>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChange')]

    param
    (
        [Parameter(Position = 0)]
        [string[]]
        $Id,

        [datetime]
        $ClosedDate,

        [string[]]
        $OperatorGroupId,

        [string[]]
        $OperatorId,

        [string[]]
        [ValidateSet('simple', 'extensive')]
        $ChangeType,

        [string[]]
        [ValidateSet('prfc', 'rfc', 'simple', 'progress', 'evaluation', 'closed', 'rejected', 'canceled')]
        $Phase,

        [string[]]
        $Status,

        [switch]
        $Open,

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
        Write-PsfMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level InternalComment
        Write-PSfMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -level InternalComment

        $uri = "$(Get-TdUrl)/tas/api/operatorChanges"
        $bound = $PSBoundParameters.Keys
        $parameter = [ordered]@{}

        if ($bound -contains 'Id' -or $bound -contains 'Status') {
            if ($Query) {
                Stop-PSFFunction -Message '-Id and -Status cannot be combined with -Query because TOPdesk has no FIQL field for them.' -EnableException $true -Cmdlet $PSCmdlet
            }
            Write-PSFMessage -Level Verbose -Message 'Using the deprecated change filters because of -Id or -Status.'
            if ($bound -contains 'ClosedDate') { $parameter['closedDate.start'] = $ClosedDate }
            if ($OperatorGroupId) { $parameter['simple.assignee.groupId'] = $OperatorGroupId }
            if ($OperatorId) { $parameter['simple.assignee.id'] = $OperatorId }
            if ($ChangeType) { $parameter['changeType'] = $ChangeType }
            if ($Phase) { $parameter['phase'] = $Phase }
            if ($Status) { $parameter['status'] = $Status }
            if ($Id) { $parameter['id'] = $Id }
            if ($bound -contains 'Open') { $parameter['open'] = $Open.IsPresent }
            if ($bound -contains 'Archived') { $parameter['archived'] = $Archived.IsPresent }
        }
        else {
            $conditions = [System.Collections.Generic.List[string]]::new()
            if ($bound -contains 'ClosedDate') { $conditions.Add((New-TdFiqlCondition -Field 'closedDate' -Operator '=ge=' -Value $ClosedDate)) }
            if ($OperatorGroupId) { $conditions.Add((New-TdFiqlCondition -Field 'simple.assignee.groupId' -Value $OperatorGroupId)) }
            if ($OperatorId) { $conditions.Add((New-TdFiqlCondition -Field 'simple.assignee.id' -Value $OperatorId)) }
            if ($ChangeType) { $conditions.Add((New-TdFiqlCondition -Field 'changeType' -Value $ChangeType)) }
            if ($Phase) { $conditions.Add((New-TdFiqlCondition -Field 'phase' -Value $Phase)) }
            if ($bound -contains 'Open') { $conditions.Add((New-TdFiqlCondition -Field 'open' -Value $Open.IsPresent)) }
            if ($bound -contains 'Archived') { $conditions.Add((New-TdFiqlCondition -Field 'archived' -Value $Archived.IsPresent)) }
            $fiql = Join-TdFiql -Condition $conditions -Query $Query
            if ($fiql) { $parameter['query'] = $fiql }
        }
        if ($Fields) { $parameter['fields'] = $Fields -join ',' }
        if ($Sort) { $parameter['sort'] = $Sort }

        Invoke-TdPagedRequest -Uri $uri -Parameter $parameter -StartParameter 'pageStart' -SizeParameter 'pageSize' -MaxPageSize 5000 -ResultSize $ResultSize -Start $Start -ResultProperty 'results'
    }
}
