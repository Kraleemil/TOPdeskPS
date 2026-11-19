---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Approve-TdReservation
schema: 2.0.0
---

# Approve-TdReservation

## SYNOPSIS
Approves a reservation request

## SYNTAX

```
Approve-TdReservation [-Id] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations/{identifier}/approve
Approve a reservation. A reservation is only allowed to be approved if it is not archived, its status is 'request', it doesn't have services and it is not part of a recurrent series.

## EXAMPLES

### EXAMPLE 1
```
Approve-TdReservation -Id $id
```

Approves a reservation request

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
