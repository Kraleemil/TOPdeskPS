---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdReservationProcessingStatus
schema: 2.0.0
---

# New-TdReservationProcessingStatus

## SYNOPSIS
Creates a reservation processing status

## SYNTAX

```
New-TdReservationProcessingStatus [[-Name] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservationProcessingStatus
Creates a processing status option for reservations and requests

## EXAMPLES

### EXAMPLE 1
```
New-TdReservationProcessingStatus
```

Creates a reservation processing status

## PARAMETERS

### -Name
The new name of the drop-down list entry
* must be unique (case-insensitive)
* may not be empty or blank
* maximum 100 characters

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
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
