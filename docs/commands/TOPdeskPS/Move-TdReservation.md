---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Move-TdReservation
schema: 2.0.0
---

# Move-TdReservation

## SYNOPSIS
Reschedules a reservation

## SYNTAX

```
Move-TdReservation [-Id] <string> [[-PlannedStartDate] <string>] [[-PlannedEndDate] <string>] [[-Body] <hashtable>] [-AllowServicesOutsideReservation] [-AllowReservationOutsideEvent] [-AllowPassedLeadTimes] [-AllowServicesOutsideServiceWindow] [-RescheduleVisitors] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations/{identifier}/reschedule
Reschedules a reservation. Only planned or requested reservations can be rescheduled. It is an error to try to reschedule an archived, cancelled, or rejected reservation.
It is also not possible to reschedule a reservation that has one or more issued facilities.

## EXAMPLES

### EXAMPLE 1
```
Move-TdReservation -Id $id
```

Reschedules a reservation

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

### -AllowServicesOutsideReservation
If false, this endpoint will return a bad request if the request would lead to services being delivered outside the reservation. Only when this parameter is explicitly set to true, that will be allowed.

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

### -AllowReservationOutsideEvent
If false, this endpoint will return a bad request if the request would create reservations outside their event. Only when this parameter is explicitly set to true, such occurrences can be created.

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

### -AllowServicesOutsideServiceWindow
If false, this endpoint will return a bad request if the request would reserve services outside their service window. Only when this parameter is explicitly set to true, such services can be created.

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

### -RescheduleVisitors
If false, linked visitors will not be rescheduled if they fall outside the reservation. Only when this parameter is explicitly set to true, visitors will be rescheduled.

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

### -PlannedStartDate
Value for plannedStartDate.

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

### -PlannedEndDate
Value for plannedEndDate.

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
