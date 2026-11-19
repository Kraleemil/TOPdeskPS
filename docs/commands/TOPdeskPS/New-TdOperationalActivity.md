---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdOperationalActivity
schema: 2.0.0
---

# New-TdOperationalActivity

## SYNOPSIS
Create a new operational activity

## SYNTAX

```
New-TdOperationalActivity [[-BriefDescription] <string>] [[-PlannedStartDate] <string>] [[-PlannedEndDate] <string>] [[-Request] <string>] [[-Action] <string>] [[-TypeId] <string>] [[-CategoryId] <string>] [[-SubcategoryId] <string>] [[-OperatorId] <string>] [[-OperatorGroupId] <string>] [[-StatusId] <string>] [[-SupplierId] <string>] [[-EstimatedCosts] <double>] [[-Costs] <double>] [[-EstimatedTime] <double>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operationalActivities
Creates a new operational activity.

The following fields may be set by UUID or name, when setting by name Bad Request is returned if the name is not unique:
* type
* category
* subcategory
* operatorGroup
* operator
* supplier
* status
* searchlist

## EXAMPLES

### EXAMPLE 1
```
New-TdOperationalActivity
```

Create a new operational activity

## PARAMETERS

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

### -Request
Initial request (description).
The following html tags can be used to format the text:
* \
* \
* \
* \
* \
* \
* \
* \
* \

* \

* \

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

### -Action
Initial action.
The following html tags can be used to format the text:
* \
* \
* \
* \
* \
* \
* \
* \
* \

* \

* \

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

### -TypeId
Id of the type.

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

### -CategoryId
Id of the category.

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

### -SubcategoryId
Id of the subcategory.

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

### -OperatorId
Id of the operator.

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

### -OperatorGroupId
Id of the operatorGroup.

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

### -StatusId
Id of the status.

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

### -SupplierId
Id of the supplier.

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

### -EstimatedCosts
Value for estimatedCosts.

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

### -Costs
Value for costs.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -EstimatedTime
Value for estimatedTime.

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
