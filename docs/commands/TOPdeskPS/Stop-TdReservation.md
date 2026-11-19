---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Stop-TdReservation
schema: 2.0.0
---

# Stop-TdReservation

## SYNOPSIS
Cancels a reservation

## SYNTAX

```
Stop-TdReservation [-Id] <string> [[-ReasonId] <string>] [[-ReasonName] <string>] [-AllowPassedLeadTimes] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations/{identifier}/cancel
Cancel a reservation. A reservation is only allowed to be cancelled if it is not archived, its status is 'planned' or 'conflictingPlanned', and it does not have any facilities which have already been issued. The body of the request is optional if TOPdesk is configured with a default cancellation reason.

## EXAMPLES

### EXAMPLE 1
```
Stop-TdReservation -Id $id
```

Cancels a reservation

## PARAMETERS

### -Id
The identifier or number of the reservation

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

### -AllowPassedLeadTimes
If false, this endpoint will return a bad request with details if the request would reserve services while their lead time has passed. Only when this parameter is explicitly set to true, such services can be created.

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

### -ReasonId
Id of the reason.

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

### -ReasonName
Name of the reason, as an alternative to -ReasonId.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
