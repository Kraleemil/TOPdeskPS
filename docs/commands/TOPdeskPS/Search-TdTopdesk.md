---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Search-TdTopdesk
schema: 2.0.0
---

# Search-TdTopdesk

## SYNOPSIS
Search via the REST-API

## SYNTAX

```
Search-TdTopdesk [[-Query] <string>] [[-Index] <string>] [[-ResultSize] <int>] [[-Start] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/search

## EXAMPLES

### EXAMPLE 1
```
Search-TdTopdesk
```

Search via the REST-API

## PARAMETERS

### -Query
The search term, for example: printer

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

### -Index
The search index you want to search on

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
Position: 4
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

[https://developers.topdesk.com/explorer/?page=general](https://developers.topdesk.com/explorer/?page=general)
