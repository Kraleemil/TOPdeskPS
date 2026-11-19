---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncident
schema: 2.0.0
---

# Get-TdIncident

## SYNOPSIS
Gets incidents

## SYNTAX

### List (Default)
```
Get-TdIncident [-ResultSize <int>] [-Start <int>] [-Completed] [-Closed] [-Resolved] [-Archived] [-MajorCall] [-TargetDateStart <datetime>] [-TargetDateEnd <datetime>] [-CallDateStart <datetime>] [-CallDateEnd <datetime>] [-CreationDateStart <datetime>] [-CreationDateEnd <datetime>] [-ModificationDateStart <datetime>] [-ModificationDateEnd <datetime>] [-ClosedDateStart <datetime>] [-ClosedDateEnd <datetime>] [-CallerId <string[]>] [-OperatorGroupId <string[]>] [-OperatorId <string[]>] [-ProcessingStatusId <string[]>] [-MainIncidentId <string[]>] [-Status <string[]>] [-CallerBranchId <string[]>] [-ObjectId <string[]>] [-ObjectName <string[]>] [-LinkedObjectId <string[]>] [-LinkedObjectName <string[]>] [-ExternalLinkId <string[]>] [-ExternalLinkType <string[]>] [-ExternalNumber <string[]>] [-Id <string[]>] [-OrderBy <string>] [-Query <string>] [-Fields <string[]>] [-Sort <string>] [<CommonParameters>]
```

### Number
```
Get-TdIncident [[-Number] <string[]>] [<CommonParameters>]
```

## DESCRIPTION
This command returns incidents from TOPdesk.

The filter parameters are translated into a FIQL query (the query parameter of GET /tas/api/incidents), which is the filtering TOPdesk documents for version 4 of the Incident API. You can also pass your own FIQL with -Query; it is combined with the other filters using AND.

The filters -Resolved, -LinkedObjectId and -LinkedObjectName, and the value 'unassigned' for -OperatorId / -OperatorGroupId, have no FIQL equivalent. When you use one of them the command falls back to the old query parameters so existing scripts keep working. They cannot be combined with -Query, -Fields or -Sort.

## EXAMPLES

### EXAMPLE 1
```
Get-TdIncident
```

Returns the 10 newest incidents.

### EXAMPLE 2
```
Get-TdIncident -Completed:$false -OperatorGroupId $groupId -ResultSize 500
```

Returns up to 500 incidents that are not completed and are assigned to the operator group.

### EXAMPLE 3
```
Get-TdIncident -Query 'briefDescription=sw=Printer' -Fields 'id', 'number', 'briefDescription'
```

Returns the id, number and brief description of the 10 newest incidents with a brief description starting with Printer.

### EXAMPLE 4
```
Get-TdIncident -ResultSize ([int]::MaxValue) -ModificationDateStart (Get-Date).AddDays(-7)
```

Returns all incidents modified in the last 7 days.

## PARAMETERS

### -Number
This is the incident number of the incident that you would like to retrieve.

```yaml
Type: String[]
Parameter Sets: Number
Aliases: IncidentNumber

Required: False
Position: 1
Default value:
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ResultSize
The amount of incidents to be returned. Default is 10.

The API returns at most 10000 incidents per request. For larger values the command sends several requests until it reaches the resultsize or there are no more incidents. Use [int]::MaxValue to return all incidents.

```yaml
Type: Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
This is the offset at which you want to start listing incidents. Using Resultsize

```yaml
Type: Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Completed
Retrieve only incidents that are completed / not completed. Set this parameter to $false to only retrieve not completed incidents, and set it to $true to only receive completed incidents.

```yaml
Type: SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Closed
Retrieve only incidents that are closed /not closed.

```yaml
Type: SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Resolved
Retrieve only incidents that are resolved depending on the setting "Call is resolved when" (Module Settings -> Call Management -> General)

```yaml
Type: SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archived
Whether to retrieve archived incidents.

```yaml
Type: SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MajorCall
Retrieve only incidents that are major calls / not major calls.
Can only be set by operators.

```yaml
Type: SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetDateStart
Retrieve only incidents with target date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetDateEnd
Retrieve only incidents with target date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallDateStart
Retrieve only incidents with call date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallDateEnd
Retrieve only incidents with call date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreationDateStart
Retrieve only incidents with creation date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreationDateEnd
Retrieve only incidents with creation date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModificationDateStart
Retrieve only incidents with modification date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModificationDateEnd
Retrieve only incidents with modification date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClosedDateStart
Retrieve only incidents with closed date greater or equal to this day 00:00:00, using time zone of the logged in user or operator

Accepts DateTime Objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClosedDateEnd
Retrieve only incidents with closed date smaller or equal to this day 23:59:59, using time zone of the logged in user or operator

Accepts Datetime objects

```yaml
Type: DateTime
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallerId
Retrieve only incidents reported by one of these caller ids

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperatorGroupId
Retrieve only incidents assigned to one of these operator group ids or "unassigned" for unassigned incidents

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperatorId
Retrieve only incidents assigned to one of these operator ids or "unassigned" for unassigned incidents

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProcessingStatusId
Retrieve only incidents with one of these processing status ids

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -MainIncidentId
Retrieve only incidents that have one of these main incident ids. Overrides any status filter as only partials have main incidents.

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
Retrieve only firstLine/secondLine/partial incidents (permission required)

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallerBranchId
Retrieve only incidents reported by callers from one of these branch ids

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId
Retrieve only incidents that have one of the specified objects set (by id)

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectName
Retrieve only incidents that have one of the specified objects set (by object name)

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinkedObjectId
Retrieve only incidents that are linked to one of the specified objects (by id)

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinkedObjectName
Retrieve only incidents that are linked to one of the specified objects (by object name)

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkId
Retrieve only incidents with external link id equal to one of these values. Should be used in combination with ExternalLinkType

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkType
Retrieve only incidents with external link type equal to one of these values. Should be used in combination with external_link_id.

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalNumber
Retrieve one or more incidents with the given external numbers.

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Retrieve one or more incidents with the given ids, make sure -ResultSize is set accordingly to get all results.

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OrderBy
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

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
A FIQL expression used to select incidents, for example "briefDescription=sw=Printer;priority.name==High". It is combined with the other filter parameters using AND. See https://developers.topdesk.com/tutorial.html#query

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fields
The fields to return, for example 'id','number','briefDescription'. By default all fields are returned (slow).

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
Sort order in the format of the API, for example 'targetDate:asc,creationDate:desc'. Overrides -OrderBy. Default is creationDate:desc (newest first).

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
