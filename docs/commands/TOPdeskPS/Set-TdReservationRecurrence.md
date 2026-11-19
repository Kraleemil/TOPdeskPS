---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdReservationRecurrence
schema: 2.0.0
---

# Set-TdReservationRecurrence

## SYNOPSIS
Make reservation recurrent on specific dates

## SYNTAX

```
Set-TdReservationRecurrence [-Id] <string> [[-Dates] <string[]>] [[-Body] <hashtable>] [-AllowConflicts] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations/{identifier}/makeRecurrent/dates
Make a reservation or request recurrent using the 'specific dates' pattern. Reservations with services on facilities can be made recurrent this way, but those with separately reserved services cannot. Neither can reservations with issued facilities.

The dates must be unique, and after the original reservation. The original occurence date can be included and will be ignored. The series cannot have more than 999 occurrences in total.

The dates should be specified in the ISO 8601 date only format (yyyy-MM-dd).

The returned list will include all reservations in the new series, including the existing ones. Only the fields id, number, status, series, plannedStartDate and plannedEndDate will be included.

Note that the recurrent reservation overview emails will not be sent, even if the setting has been enabled.

## EXAMPLES

### EXAMPLE 1
```
Set-TdReservationRecurrence -Id $id
```

Make reservation recurrent on specific dates

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

### -AllowConflicts
If false, this endpoint will return a bad request with details if the request would create conflicts. Only when this parameter is explicitly set to true, conflicting occurrences can be created.

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

### -Dates
Dates should be specified in the ISO 8601 date only format (yyyy-MM-dd)

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
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
