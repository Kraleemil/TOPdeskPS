---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdReservationReservedService
schema: 2.0.0
---

# New-TdReservationReservedService

## SYNOPSIS
Adds and removes services for a reserved facility.

## SYNTAX

```
New-TdReservationReservedService [-Id] <string> [[-FacilityLocationId] <string>] [[-FacilityObjectId] <string>] [[-FacilityAssetId] <string>] [[-Body] <hashtable>] [-AllowPassedLeadTimes] [-AllowServicesOutsideServiceWindow] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations/{identifier}/reservedServices
The added services will be reserved with the default values from the service card. For removing services, use the id of the reserved service (from reservation.reservedFacilities.reservedServices.id), not the id of the original service.

## EXAMPLES

### EXAMPLE 1
```
New-TdReservationReservedService -Id $id
```

Adds and removes services for a reserved facility.

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

### -FacilityLocationId
Id of facility.location.

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

### -FacilityObjectId
Id of facility.object.

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

### -FacilityAssetId
Id of facility.asset.

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
