---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Move-TdReservationReservedFacility
schema: 2.0.0
---

# Move-TdReservationReservedFacility

## SYNOPSIS
Reschedules a reserved facility

## SYNTAX

```
Move-TdReservationReservedFacility [-Id] <string> [[-FromLocationId] <string>] [[-FromObjectId] <string>] [[-FromAssetId] <string>] [[-ToLocationId] <string>] [[-ToObjectId] <string>] [[-ToAssetId] <string>] [[-Body] <hashtable>] [-AllowPassedLeadTimes] [-AllowServicesOutsideServiceWindow] [-AllowServicesNotAvailableForNewFacility] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations/{identifier}/reservedFacilities/move
Replaces one reserved facility with another for a reservation. Only planned or requested reservations and conflicts can have their facilities changed: it is an error to try to reschedule an archived, cancelled or rejected reservation.
It is also not possible to reschedule a reservation that has one or more issued facilities, or an occurrence of a recurring reservation series.

## EXAMPLES

### EXAMPLE 1
```
Move-TdReservationReservedFacility -Id $id
```

Reschedules a reserved facility

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

### -AllowServicesNotAvailableForNewFacility
If false, this endpoint will return a bad request if the request would lead to services being reserved on facilities for which they are not available. Only when this parameter is explicitly set to true, such reserved services will be allowed.

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

### -FromLocationId
Id of from.location.

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

### -FromObjectId
Id of from.object.

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

### -FromAssetId
Id of from.asset.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToLocationId
Id of to.location.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToObjectId
Id of to.object.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToAssetId
Id of to.asset.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
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
Position: 8
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
