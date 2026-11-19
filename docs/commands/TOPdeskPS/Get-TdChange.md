---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChange
schema: 2.0.0
---

# Get-TdChange

## SYNOPSIS
Returns changes

## SYNTAX

```
Get-TdChange [[-Id] <string[]>] [-ClosedDate <datetime>] [-OperatorGroupId <string[]>] [-OperatorId <string[]>] [-ChangeType <string[]>] [-Phase <string[]>] [-Status <string[]>] [-Open] [-Archived] [-Query <string>] [-Fields <string[]>] [-Sort <string>] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

## DESCRIPTION
Returns changes from GET /tas/api/operatorChanges.

The filter parameters are translated into a FIQL query (the query parameter), because TOPdesk has deprecated the old filter parameters of this endpoint. You can add your own FIQL with -Query; it is combined with the other filters using AND.

-Id and -Status have no FIQL field. When you use one of them the command falls back to the old (deprecated) filter parameters, and it can then not be combined with -Query.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChange
```

Returns up to 1000 changes.

### EXAMPLE 2
```
Get-TdChange -Open -OperatorGroupId $groupId -ResultSize ([int]::MaxValue)
```

Returns all open changes assigned to the operator group.

## PARAMETERS

### -Id
The internal ID(s) of the change(s) to return.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClosedDate
If specified, only changes that were closed on or after the given date are returned.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperatorGroupId
If specified, only changes assigned to the given operator group(s) will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperatorId
If specified, only changes assigned to the given operator(s) will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChangeType
If specified, only changes of the supplied type(s) will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Phase
If specified, only changes in the supplied phase(s) will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
If specified, only changes in the supplied status(es) will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Open
If specified, only changes that are open will be returned. Specify -Open:$false to return only closed changes.

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

### -Archived
If specified, only changes that are archived will be returned. Specify -Archived:$false to return only active changes.

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
A FIQL expression to select changes, for example "briefDescription=sw=Server;urgent==true". See the query parameter of GET /tas/api/operatorChanges for the available fields.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
Sort order, for example 'creationDate:desc' or 'simple.closedDate:asc'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of changes to return. Default is 1000, which is also what the API returned before when no page size was given. Use [int]::MaxValue to return all changes.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 1000
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The offset at which to start listing changes.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
