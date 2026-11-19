---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReservationOptionalSearchlist
schema: 2.0.0
---

# Get-TdReservationOptionalSearchlist

## SYNOPSIS
Returns the optional searchlist

## SYNTAX

```
Get-TdReservationOptionalSearchlist [-Tab] <string> [-Searchlist] <string> [[-ExternalLinkId] <string[]>] [[-ExternalLinkType] <string[]>] [[-ResultSize] <int>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/reservationsOptionalSearchlist/{tab}/{searchlist}
Returns the list of possible values for the requested optional searchlist

## EXAMPLES

### EXAMPLE 1
```
Get-TdReservationOptionalSearchlist -Tab $tab -Searchlist $searchlist
```

Returns the optional searchlist

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
The searchlist number

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

### -Archived
Whether to show archived entries. Leave out for all, or specify true/false for only archived, or only active entries, respectively.

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

### -ExternalLinkId
Retrieve only optional searchlist entries with external link id equal to one of these values. Should be used in combination with 'external_link_type'

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
Retrieve only optional searchlist entries with external link type equal to one of these values. Should be used in combination with 'external_link_id'

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
