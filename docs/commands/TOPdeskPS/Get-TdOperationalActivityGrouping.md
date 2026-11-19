---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperationalActivityGrouping
schema: 2.0.0
---

# Get-TdOperationalActivityGrouping

## SYNOPSIS
Get list of groupings for operational activities

## SYNTAX

```
Get-TdOperationalActivityGrouping [[-Query] <string>] [[-Fields] <string[]>] [[-Sort] <string>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operationalActivities/groupings
Returns list of groupings for operational activities. Client has to have read permission for operational activities.

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperationalActivityGrouping
```

Get list of groupings for operational activities

## PARAMETERS

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the
tutorial.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fields
The fields or objects to include in the response. By using 'all' or '*' the all supported fields are returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
The returned objects are sorted by the given field names, and by the given ascending/descending directions.
When no direction is given 'asc' will be used by default.

When no sorting information is provided items will be sorted by 'name:asc' by default.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 100
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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
