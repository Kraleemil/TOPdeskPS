---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncidentSearchlist
schema: 2.0.0
---

# Get-TdIncidentSearchlist

## SYNOPSIS
Get list of optional drop-down values

## SYNTAX

```
Get-TdIncidentSearchlist [-Tab] <string> [-Searchlist] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/incidents/free_fields/{tab}/searchlists/{searchlist}

## EXAMPLES

### EXAMPLE 1
```
Get-TdIncidentSearchlist -Tab $tab -Searchlist $searchlist
```

Get list of optional drop-down values

## PARAMETERS

### -Tab
The tab number

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
The list of optional drop-down values

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
