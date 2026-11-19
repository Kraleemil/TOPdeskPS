---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperatorSearchlist
schema: 2.0.0
---

# Get-TdOperatorSearchlist

## SYNOPSIS
Get list of optional drop-down values for operators

## SYNTAX

```
Get-TdOperatorSearchlist [-Tab] <string> [-Searchlist] <string> [[-ExternalLinkId] <string[]>] [[-ExternalLinkType] <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operators/free_fields/{tab}/searchlists/{searchlist}

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperatorSearchlist -Tab $tab -Searchlist $searchlist
```

Get list of optional drop-down values for operators

## PARAMETERS

### -Tab
The tab number. Must be '1' or '2'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Searchlist
The searchlist number. Must be '1', '2', '3', '4' or '5'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkId
Retrieve only optional drop-down list entries with external link id equal to one of these values. Should be used in combination with 'external_link_type'

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

### -ExternalLinkType
Retrieve only optional drop-down list entries with external link type equal to one of these values. Should be used in combination with 'external_link_id'

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
