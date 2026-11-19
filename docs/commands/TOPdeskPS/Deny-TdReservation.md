---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Deny-TdReservation
schema: 2.0.0
---

# Deny-TdReservation

## SYNOPSIS
Rejects a reservation request

## SYNTAX

```
Deny-TdReservation [-Id] <string> [[-ReasonId] <string>] [[-ReasonName] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations/{identifier}/reject
Reject a reservation. A reservation is only allowed to be rejected if it is not archived, its status is 'request' or 'conflictingRequest', it doesn't have services and it is not part of a recurrent series. The body of the request is optional if TOPdesk is configured with a default rejection reason.

## EXAMPLES

### EXAMPLE 1
```
Deny-TdReservation -Id $id
```

Rejects a reservation request

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
