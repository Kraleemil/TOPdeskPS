---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReservationRejectionReason
schema: 2.0.0
---

# Get-TdReservationRejectionReason

## SYNOPSIS
Returns rejection reasons

## SYNTAX

```
Get-TdReservationRejectionReason [[-ResultSize] <int>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/reservationRejectionReasons
Returns the list of possible rejection reasons for reservation requests

## EXAMPLES

### EXAMPLE 1
```
Get-TdReservationRejectionReason
```

Returns rejection reasons

## PARAMETERS

### -Archived
Whether to show archived entries. Specify true/false for only archived, or only active entries, respectively. This does not allow null/unspecified, for backwards compatibility reasons.

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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
