---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReservableLocationReservableInterval
schema: 2.0.0
---

# Get-TdReservableLocationReservableInterval

## SYNOPSIS
Returns a reservable interval for a reservable location

## SYNTAX

```
Get-TdReservableLocationReservableInterval [-Id] <string> [[-From] <datetime>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/reservableLocations/{id}/reservableInterval
Returns a reservable interval for a reservable location, based on its UUID and the provided start of the interval ('from').

## EXAMPLES

### EXAMPLE 1
```
Get-TdReservableLocationReservableInterval -Id $id
```

Returns a reservable interval for a reservable location

## PARAMETERS

### -Id
The id of the item.

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

### -From
The start of the interval. The date should be specified according to the ISO 8601 full date-time notation, e.g. '2019-06-20T09:41:02.019Z'.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
