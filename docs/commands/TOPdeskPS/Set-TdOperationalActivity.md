---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdOperationalActivity
schema: 2.0.0
---

# Set-TdOperationalActivity

## SYNOPSIS
Updates an existing operational activity

## SYNTAX

```
Set-TdOperationalActivity [-Id] <string> [[-BriefDescription] <string>] [[-PlannedStartDate] <string>] [[-PlannedEndDate] <string>] [[-CategoryId] <string>] [[-SubcategoryId] <string>] [[-TypeId] <string>] [[-StatusId] <string>] [[-AnomalyReasonId] <string>] [[-SkippedReasonId] <string>] [[-ResolvedDateTime] <string>] [[-OperatorId] <string>] [[-OperatorGroupId] <string>] [[-SupplierId] <string>] [[-SchemaId] <string>] [[-GroupingId] <string>] [[-EstimatedCosts] <double>] [[-Costs] <double>] [[-EstimatedTime] <int>] [[-BudgetHolderId] <string>] [[-Body] <hashtable>] [-AnomalyValue] [-SkippedValue] [-ResolvedValue] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/operationalActivities/{identifier}
Updates an existing operational activity

## EXAMPLES

### EXAMPLE 1
```
Set-TdOperationalActivity -Id $id
```

Updates an existing operational activity

## PARAMETERS

### -Id
The id or number of the operational activity

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

### -BriefDescription
Value for briefDescription.

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

### -PlannedStartDate
Conforms to ISO-8601.

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

### -PlannedEndDate
Conforms to ISO-8601.

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

### -CategoryId
Id of the category.

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

### -SubcategoryId
Id of the subcategory.

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

### -TypeId
Id of the type.

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

### -StatusId
Id of the status.

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

### -AnomalyValue
Value for anomaly.value.

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

### -AnomalyReasonId
Id of anomaly.reason.

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

### -SkippedValue
Value for skipped.value.

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

### -SkippedReasonId
Id of skipped.reason.

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

### -ResolvedValue
Value for resolved.value.

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

### -ResolvedDateTime
Conforms to ISO-8601.

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

### -OperatorId
Id of the operator.

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

### -OperatorGroupId
Id of the operatorGroup.

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

### -SupplierId
Id of the supplier.

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

### -SchemaId
Id of the schema.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupingId
Id of the grouping.

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

### -EstimatedCosts
Value for estimatedCosts.

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

### -Costs
Value for costs.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -EstimatedTime
returns the estimated time in minutes.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: 0
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
Position: 20
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
Position: 21
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
