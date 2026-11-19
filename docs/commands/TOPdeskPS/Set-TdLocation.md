---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdLocation
schema: 2.0.0
---

# Set-TdLocation

## SYNOPSIS
Update a location by id

## SYNTAX

```
Set-TdLocation [-Id] <string> [[-Name] <string>] [[-RoomNumber] <string>] [[-FunctionalUseId] <string>] [[-TypeId] <string>] [[-Capacity] <int>] [[-Specification] <string>] [[-BudgetHolderId] <string>] [[-BuildingZoneId] <string>] [[-RoomStatusId] <string>] [[-RoomSetup] <string>] [[-MajorLocationId] <string>] [[-FinishingCeilingArea] <double>] [[-FinishingCeilingCoveringId] <string>] [[-FinishingFloorArea] <double>] [[-FinishingFloorCoveringId] <string>] [[-FinishingGlassArea] <double>] [[-FinishingGlassMaterialId] <string>] [[-FinishingWallArea] <double>] [[-FinishingWallCoveringId] <string>] [[-Notes] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/locations/id/{id}

## EXAMPLES

### EXAMPLE 1
```
Set-TdLocation -Id $id
```

Update a location by id

## PARAMETERS

### -Id
The id of the location to update.

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

### -Name
Location name
Size range: 'maximum 100 characters'

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

### -RoomNumber
Location room number
Size range: 'maximum 100 characters'

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

### -FunctionalUseId
Id of the functionalUse.

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

### -TypeId
Id of the type.

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

### -Capacity
Location capacity

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Specification
Location specification
Size range: 'maximum 100 characters'

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

### -BudgetHolderId
Id of the budgetHolder.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildingZoneId
Id of the buildingZone.

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

### -RoomStatusId
Id of the roomStatus.

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

### -RoomSetup
Location room setup. Default value: standardLocation

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

### -MajorLocationId
Id of the majorLocation.

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

### -FinishingCeilingArea
Ceiling area

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FinishingCeilingCoveringId
Id of finishing.ceilingCovering.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -FinishingFloorArea
Floor area

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FinishingFloorCoveringId
Id of finishing.floorCovering.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -FinishingGlassArea
Glass area

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FinishingGlassMaterialId
Id of finishing.glassMaterial.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -FinishingWallArea
Wall area

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FinishingWallCoveringId
Id of finishing.wallCovering.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Notes
Notes

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
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
Position: 22
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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
