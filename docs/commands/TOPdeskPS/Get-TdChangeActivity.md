---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeActivity
schema: 2.0.0
---

# Get-TdChangeActivity

## SYNOPSIS
Gets change activities

## SYNTAX

```
Get-TdChangeActivity [[-Change] <string[]>] [[-Query] <string>] [[-Fields] <string[]>] [[-Sort] <string>] [[-ResultSize] <int>] [[-Start] <int>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
This command returns change activities from GET /tas/api/operatorChangeActivities. This returns activities available to the account used with Connect-TdService.

The filter parameters are translated into a FIQL query (the query parameter), because TOPdesk has deprecated the old filter parameters of this endpoint. You can add your own FIQL with -Query; it is combined with the other filters using AND.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeActivity -Change 'C1801-123'
```

Grabs change activities for C1801-123

### EXAMPLE 2
```
Get-TdChangeActivity -Query 'operatorGroup.name==Servicedesk;open==true'
```

Returns the open activities assigned to the operator group Servicedesk.

## PARAMETERS

### -Change
Id or number of the parent change
This is a repeatable filter parameter

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: id

Required: False
Position: 1
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Archived
Whether to only retrieve archived activities or not. Specify -Archived:$false to return only active activities.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
A FIQL expression to select activities, for example "status.name==Planned;blocked==false". See the query parameter of GET /tas/api/operatorChangeActivities for the available fields.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fields
The fields to return, for example 'id','number','briefDescription'. Use 'all' to return all fields.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
Sort order, for example 'plannedFinalDate:asc'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of activities to return. Default is 1000, which is also what the API returned before when no page size was given. Use [int]::MaxValue to return all activities.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 1000
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The offset at which to start listing activities.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
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
