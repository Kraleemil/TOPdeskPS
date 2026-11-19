---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPersonGroupPerson
schema: 2.0.0
---

# Get-TdPersonGroupPerson

## SYNOPSIS
Get list of persons of a persongroup by id (v2)

## SYNTAX

```
Get-TdPersonGroupPerson [-Id] <string> [[-Fields] <string[]>] [[-Sort] <string>] [[-Query] <string>] [[-ResultSize] <int>] [[-Start] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/persongroups/{id}/persons
NOTE: This endpoint matches in behavior with the */persons/* endpoint.

## EXAMPLES

### EXAMPLE 1
```
Get-TdPersonGroupPerson -Id $id
```

Get list of persons of a persongroup by id (v2)

## PARAMETERS

### -Id
The persongroup id

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Fields
Only include these specific fields in the response. To include all fields use '*' or 'all'.

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

When no sorting information is provided items will be sorted by 'dynamicName:asc' by default.

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

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the
tutorial.
If no query parameter is provided all persons (including archived) are returned. For public user archived persons are never returned.
To return only active persons
use *query=archived==false*

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
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The offset of the first item to return.

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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
