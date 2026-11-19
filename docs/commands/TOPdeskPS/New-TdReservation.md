---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdReservation
schema: 2.0.0
---

# New-TdReservation

## SYNOPSIS
Creates a single reservation

## SYNTAX

```
New-TdReservation [[-BriefDescription] <string>] [[-Notes] <string>] [[-Status] <string>] [[-RequesterId] <string>] [[-OperatorGroupId] <string>] [[-OperatorId] <string>] [[-ProcessingStatusId] <string>] [[-NumberOfPersons] <int>] [[-PlannedStartDate] <string>] [[-PlannedEndDate] <string>] [[-ExternalLinkId] <string>] [[-ExternalLinkType] <string>] [[-ExternalLinkDate] <string>] [[-Body] <hashtable>] [-AllowPassedLeadTimes] [-AllowServicesOutsideServiceWindow] [-RescheduleVisitors] [-AllowConflicts] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservations
Setting the requester will also set all related fields from the given person.

Specified services will be added to the facility in addition to standard services. All services will be reserved with the default values from the service card. Note that adding a service both as standard and explicitly, will cause a conflict since you can't reserve the same service twice at the same delivery time.

SSP users are only allowed to create reservations on assets. For SSP users, the 'requester' field has to be set to their own person-id.

## EXAMPLES

### EXAMPLE 1
```
New-TdReservation
```

Creates a single reservation

## PARAMETERS

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

### -AllowConflicts
If false, this endpoint will return a bad request with details if the request would create conflicts. Only when this parameter is explicitly set to true, conflicting reservations can be created.

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

### -BriefDescription
Value for briefDescription.

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

### -Notes
Value for notes.

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

### -Status
Defaults to 'planned' if not specified. This field may be overwritten for SSP users by the asset setting 'Requires approval'.

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

### -RequesterId
Id of the requester.

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

### -OperatorGroupId
Id of the operatorGroup.

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

### -OperatorId
Id of the operator.

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

### -ProcessingStatusId
Id of the processingStatus.

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

### -NumberOfPersons
The number of participants attending

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlannedStartDate
The planned start date of the reservation in UTC, according to ISO 8601. The given value will be truncated to whole minutes. The planned start date must be before the planned end date, and within the service window of all reserved facilities.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlannedEndDate
The planned end date of the reservation in UTC, according to ISO 8601. The given value will be truncated to whole minutes. The planned end date must be after the planned start date, and within the service window of all reserved facilities.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkId
The id of the entity in the external system
Size range: 'maximum 450 characters'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkType
The type of the link
Range: 'A non-zero integer formatted as string'. Each integration should use its own value. If multiple integrations use the same value, records could be shared between the integrations

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkDate
The date of the synchronization

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
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
Position: 14
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
