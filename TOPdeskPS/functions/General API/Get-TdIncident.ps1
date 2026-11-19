function Get-TdIncident {
    <#
	.SYNOPSIS
		Gets incidents

	.DESCRIPTION
		This command returns incidents from TOPdesk.

		The filter parameters are translated into a FIQL query (the query parameter of GET /tas/api/incidents), which is the filtering TOPdesk documents for version 4 of the Incident API. You can also pass your own FIQL with -Query; it is combined with the other filters using AND.

		The filters -Resolved, -LinkedObjectId and -LinkedObjectName, and the value 'unassigned' for -OperatorId / -OperatorGroupId, have no FIQL equivalent. When you use one of them the command falls back to the old query parameters so existing scripts keep working. They cannot be combined with -Query, -Fields or -Sort.

	.PARAMETER ResultSize
        The amount of incidents to be returned. Default is 10.

        The API returns at most 10000 incidents per request. For larger values the command sends several requests until it reaches the resultsize or there are no more incidents. Use [int]::MaxValue to return all incidents.

	.PARAMETER Start
		This is the offset at which you want to start listing incidents. Using Resultsize

	.PARAMETER Completed
		Retrieve only incidents that are completed / not completed. Set this parameter to $false to only retrieve not completed incidents, and set it to $true to only receive completed incidents.

	.PARAMETER Closed
		Retrieve only incidents that are closed /not closed.

	.PARAMETER Resolved
		Retrieve only incidents that are resolved depending on the setting "Call is resolved when" (Module Settings -> Call Management -> General)

	.PARAMETER Archived
		Whether to retrieve archived incidents.

	.PARAMETER Number
        This is the incident number of the incident that you would like to retrieve.

    .PARAMETER OrderBy
        Order the retrieved incidents by these criteria:
call_date
creation_date
modification_date
target_date
closed_date
with the order ASC (ascending) or DESC (descending) appended with a plus-sign. Possible combinations of orders are comma-separated
Example: order_by=creation_date+DESC,target_date+ASC
Default is sorted by creation date, descending (newest first).
Default value: creation_date+DESC

.PARAMETER MajorCall
Retrieve only incidents that are major calls / not major calls.
Can only be set by operators.

.PARAMETER TargetDateStart
Retrieve only incidents with target date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

.PARAMETER TargetDateEnd
Retrieve only incidents with target date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects

.PARAMETER CallDateStart
Retrieve only incidents with call date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

.PARAMETER CallDateEnd
Retrieve only incidents with call date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects
.PARAMETER CreationDateStart
Retrieve only incidents with creation date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

.PARAMETER CreationDateEnd
Retrieve only incidents with creation date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects
.PARAMETER ModificationDateStart
Retrieve only incidents with modification date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

.PARAMETER ModificationDateEnd
Retrieve only incidents with modification date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects
.PARAMETER ClosedDateStart
Retrieve only incidents with closed date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects
.PARAMETER ClosedDateEnd
Retrieve only incidents with closed date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects



.PARAMETER CallerId
Retrieve only incidents reported by one of these caller ids

.PARAMETER OperatorGroupId
Retrieve only incidents assigned to one of these operator group ids or "unassigned" for unassigned incidents

.PARAMETER OperatorId
Retrieve only incidents assigned to one of these operator ids or "unassigned" for unassigned incidents

.PARAMETER ProcessingStatusId
Retrieve only incidents with one of these processing status ids

.PARAMETER MainIncidentId
Retrieve only incidents that have one of these main incident ids. Overrides any status filter as only partials have main incidents.

.PARAMETER Status
    Retrieve only firstLine/secondLine/partial incidents (permission required)

.PARAMETER CallerBranchId
Retrieve only incidents reported by callers from one of these branch ids

.PARAMETER ObjectId
Retrieve only incidents that have one of the specified objects set (by id)

.PARAMETER ObjectName
Retrieve only incidents that have one of the specified objects set (by object name)

.PARAMETER LinkedObjectId
Retrieve only incidents that are linked to one of the specified objects (by id)

.PARAMETER LinkedObjectName

Retrieve only incidents that are linked to one of the specified objects (by object name)

.PARAMETER ExternalLinkId
Retrieve only incidents with external link id equal to one of these values. Should be used in combination with ExternalLinkType

.PARAMETER ExternalLinkType
Retrieve only incidents with external link type equal to one of these values. Should be used in combination with external_link_id.

.PARAMETER ExternalNumber
Retrieve one or more incidents with the given external numbers.

.PARAMETER Id
Retrieve one or more incidents with the given ids, make sure -ResultSize is set accordingly to get all results.

.PARAMETER Query
A FIQL expression used to select incidents, for example "briefDescription=sw=Printer;priority.name==High". It is combined with the other filter parameters using AND. See https://developers.topdesk.com/tutorial.html#query

.PARAMETER Fields
The fields to return, for example 'id','number','briefDescription'. By default all fields are returned (slow).

.PARAMETER Sort
Sort order in the format of the API, for example 'targetDate:asc,creationDate:desc'. Overrides -OrderBy. Default is creationDate:desc (newest first).

	.EXAMPLE
		PS C:\> Get-TdIncident

        Returns the 10 newest incidents.

    .EXAMPLE
        PS C:\> Get-TdIncident -Completed:$false -OperatorGroupId $groupId -ResultSize 500

        Returns up to 500 incidents that are not completed and are assigned to the operator group.

    .EXAMPLE
        PS C:\> Get-TdIncident -Query 'briefDescription=sw=Printer' -Fields 'id', 'number', 'briefDescription'

        Returns the id, number and brief description of the 10 newest incidents with a brief description starting with Printer.

    .EXAMPLE
        PS C:\> Get-TdIncident -ResultSize ([int]::MaxValue) -ModificationDateStart (Get-Date).AddDays(-7)

        Returns all incidents modified in the last 7 days.
#>

    [CmdletBinding(DefaultParameterSetName = 'List',
        HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncident')]
    param
    (
        [Parameter(ParameterSetName = 'Number',
            ValueFromPipeline = $true,
            position = 0)]
        [Alias('IncidentNumber')]
        [string[]]
        $Number,

        [Parameter(ParameterSetName = 'List')]
        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $ResultSize = 10,

        [Parameter(ParameterSetName = 'List')]
        [ValidateRange(0, [int]::MaxValue)]
        [int]
        $Start = 0,

        [Parameter(ParameterSetName = 'List')]
        [switch]
        $Completed,

        [Parameter(ParameterSetName = 'List')]
        [switch]
        $Closed,

        [Parameter(ParameterSetName = 'List')]
        [switch]
        $Resolved,

        [Parameter(ParameterSetName = 'List')]
        [switch]
        $Archived,

        [Parameter(ParameterSetName = 'List')]
        [switch]
        $MajorCall,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $TargetDateStart,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $TargetDateEnd,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $CallDateStart,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $CallDateEnd,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $CreationDateStart,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $CreationDateEnd,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $ModificationDateStart,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $ModificationDateEnd,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $ClosedDateStart,

        [Parameter(ParameterSetName = 'List')]
        [datetime]
        $ClosedDateEnd,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $CallerId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $OperatorGroupId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $OperatorId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $ProcessingStatusId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $MainIncidentId,

        [Parameter(ParameterSetName = 'List')]
        [ValidateSet('firstLine', 'secondLine', 'partial')]
        [string[]]
        $Status,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $CallerBranchId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $ObjectId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $ObjectName,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $LinkedObjectId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $LinkedObjectName,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $ExternalLinkId,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $ExternalLinkType,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $ExternalNumber,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $Id,

        [Parameter(ParameterSetName = 'List')]
        [string]
        $OrderBy,

        [Parameter(ParameterSetName = 'List')]
        [string]
        $Query,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $Fields,

        [Parameter(ParameterSetName = 'List')]
        [string]
        $Sort
    )

    process {
        Write-PSFMessage -Level InternalComment -Message "Bound parameters: $($PSBoundParameters.Keys -join ", ")" -Tag 'debug', 'start', 'param'
        Write-PSFMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level Debug

        $uri = "$(Get-TdUrl)/tas/api/incidents"

        switch ($PSCmdlet.ParameterSetName) {
            List {
                $bound = $PSBoundParameters.Keys
                $legacyOnly = @('Resolved', 'LinkedObjectId', 'LinkedObjectName') | Where-Object { $bound -contains $_ }
                if (($OperatorId -contains 'unassigned') -or ($OperatorGroupId -contains 'unassigned')) { $legacyOnly = @($legacyOnly) + 'unassigned' }

                if ($legacyOnly) {
                    if ($bound -contains 'Query' -or $bound -contains 'Fields' -or $bound -contains 'Sort') {
                        Stop-PSFFunction -Message "$($legacyOnly -join ', ') cannot be combined with -Query, -Fields or -Sort because TOPdesk has no FIQL field for it." -EnableException $true -Cmdlet $PSCmdlet
                    }
                    Write-PSFMessage -Level Verbose -Message "Using the legacy incident filters because of: $($legacyOnly -join ', ')"
                    $parameter = [ordered]@{}
                    $map = [ordered]@{
                        CallerId = 'caller'; OperatorGroupId = 'operator_group'; OperatorId = 'operator'; ProcessingStatusId = 'processing_status'
                        MainIncidentId = 'main_incident_id'; Status = 'status'; CallerBranchId = 'caller_branch'; ObjectId = 'object_id'
                        ObjectName = 'object_name'; LinkedObjectId = 'linked_object_id'; LinkedObjectName = 'linked_object_name'
                        ExternalLinkId = 'external_link_id'; ExternalLinkType = 'external_link_type'; Id = 'id'; ExternalNumber = 'external_number'
                    }
                    foreach ($name in 'Completed', 'Closed', 'Resolved', 'Archived', 'MajorCall') {
                        if ($bound -contains $name) {
                            $parameter[($name -creplace '([a-z])([A-Z])', '$1_$2').ToLower()] = $PSBoundParameters[$name].IsPresent
                        }
                    }
                    foreach ($name in 'TargetDate', 'CallDate', 'CreationDate', 'ModificationDate', 'ClosedDate') {
                        foreach ($suffix in 'Start', 'End') {
                            if ($bound -contains "$name$suffix") {
                                $key = ('{0}_{1}' -f ($name -creplace '([a-z])([A-Z])', '$1_$2'), $suffix).ToLower()
                                $parameter[$key] = (Get-Date $PSBoundParameters["$name$suffix"] -Format 'yyyy-MM-dd')
                            }
                        }
                    }
                    foreach ($name in $map.Keys) {
                        if ($bound -contains $name) { $parameter[$map[$name]] = $PSBoundParameters[$name] }
                    }
                    if ($OrderBy) { $parameter['order_by'] = $OrderBy }

                    Invoke-TdPagedRequest -Uri $uri -Parameter $parameter -StartParameter 'start' -SizeParameter 'page_size' -MaxPageSize 10000 -ResultSize $ResultSize -Start $Start |
                    Where-Object { $_.Number -notlike '' } |
                    Select-PSFObject -Typename 'TOPdeskPS.Incident' -KeepInputObject
                    return
                }

                $conditions = [System.Collections.Generic.List[string]]::new()
                foreach ($pair in @(@('Completed', 'completed'), @('Closed', 'closed'), @('MajorCall', 'majorCall'))) {
                    if ($bound -contains $pair[0]) { $conditions.Add((New-TdFiqlCondition -Field $pair[1] -Value $PSBoundParameters[$pair[0]].IsPresent)) }
                }

                # The old filters worked on whole days in the time zone of the user, so do the same here.
                foreach ($name in 'TargetDate', 'CallDate', 'CreationDate', 'ModificationDate', 'ClosedDate') {
                    $field = $name.Substring(0, 1).ToLower() + $name.Substring(1)
                    if ($bound -contains "${name}Start") { $conditions.Add((New-TdFiqlCondition -Field $field -Operator '=ge=' -Value ($PSBoundParameters["${name}Start"].Date))) }
                    if ($bound -contains "${name}End") { $conditions.Add((New-TdFiqlCondition -Field $field -Operator '=lt=' -Value ($PSBoundParameters["${name}End"].Date.AddDays(1)))) }
                }

                $idFields = [ordered]@{
                    CallerId = 'caller.id'; OperatorGroupId = 'operatorGroup.id'; OperatorId = 'operator.id'; ProcessingStatusId = 'processingStatus.id'
                    MainIncidentId = 'mainIncident.id'; CallerBranchId = 'callerBranch.id'; ObjectId = 'object.id'; ObjectName = 'object.name'
                    ExternalLinkId = 'externalLinks.id'; ExternalLinkType = 'externalLinks.type'; ExternalNumber = 'externalNumber'; Id = 'id'
                }
                foreach ($name in $idFields.Keys) {
                    if ($bound -contains $name) { $conditions.Add((New-TdFiqlCondition -Field $idFields[$name] -Value $PSBoundParameters[$name])) }
                }

                # Archived incidents and partials are only returned with all=true, the status field tells them apart.
                $parameter = [ordered]@{}
                if ($Archived -or ($Status -contains 'partial')) {
                    $statuses = if ($Status) { $Status } else { 'firstLine', 'secondLine' }
                    if ($Archived) { $statuses = $statuses | ForEach-Object { "${_}Archived" } }
                    $conditions.Add((New-TdFiqlCondition -Field 'status' -Value $statuses))
                    $parameter['all'] = $true
                }
                elseif ($Status) {
                    $conditions.Add((New-TdFiqlCondition -Field 'status' -Value $Status))
                }

                $fiql = Join-TdFiql -Condition $conditions -Query $Query
                if ($fiql) { $parameter['query'] = $fiql }

                if ($Sort) { $parameter['sort'] = $Sort }
                elseif ($OrderBy) {
                    $parameter['sort'] = (($OrderBy -split ',') | ForEach-Object {
                            $field, $direction = $_.Trim() -split '[+ :]', 2
                            $field = [regex]::Replace($field, '_([a-z])', { param($m) $m.Groups[1].Value.ToUpper() })
                            if ($direction) { '{0}:{1}' -f $field, $direction.Trim().ToLower() } else { $field }
                        }) -join ','
                }
                else { $parameter['sort'] = 'creationDate:desc' }
                if ($Fields) { $parameter['fields'] = $Fields -join ',' }

                Invoke-TdPagedRequest -Uri $uri -Parameter $parameter -StartParameter 'pageStart' -SizeParameter 'pageSize' -MaxPageSize 10000 -ResultSize $ResultSize -Start $Start |
                Select-PSFObject -Typename 'TOPdeskPS.Incident' -KeepInputObject
            }

            Number {
                foreach ($num in $Number) {
                    Invoke-TdMethod -Uri "$uri/number/$($num.ToLower())" |
                    Select-PSFObject -Typename 'TOPdeskPS.Incident' -KeepInputObject
                }
            }
        }
    }
}
