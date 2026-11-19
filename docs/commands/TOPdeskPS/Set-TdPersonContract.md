---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdPersonContract
schema: 2.0.0
---

# Set-TdPersonContract

## SYNOPSIS
Update a person's contract

## SYNTAX

```
Set-TdPersonContract [-Id] <string> [[-TravelAllowanceTravelAllowanceAmount] <double>] [[-TravelAllowanceWorkDistance] <int>] [[-TravelAllowanceTypeOfAllowanceId] <string>] [[-CompanyCarCompanyCarBudget] <double>] [[-CompensationAndBenefitsExpenses] <string>] [[-CompensationAndBenefitsRepresentationAllowance] <string>] [[-CompensationAndBenefitsHotelAllowance] <string>] [[-CompensationAndBenefitsOtherBenefits] <string>] [[-Body] <hashtable>] [-TravelAllowanceHasTravelAllowance] [-CompanyCarHasCompanyCar] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/persons/{id}/contract
NOTE: This endpoint version is not backward compatible with the previous version of the contract endpoint. For documentation on the previous endpoint version, please refer to the document version 1.58.0.

## EXAMPLES

### EXAMPLE 1
```
Set-TdPersonContract -Id $id
```

Update a person's contract

## PARAMETERS

### -Id
The id of the person for which the contract should be updated.

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

### -TravelAllowanceHasTravelAllowance
Person has travel allowance

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

### -TravelAllowanceTravelAllowanceAmount
Person's travel allowance amount

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TravelAllowanceWorkDistance
Person's work distance, whole number

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TravelAllowanceTypeOfAllowanceId
Id of travelAllowance.typeOfAllowance.

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

### -CompanyCarHasCompanyCar
Person has company car

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

### -CompanyCarCompanyCarBudget
Person's company car budget

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -CompensationAndBenefitsExpenses
Person's expenses, maximum length 50 characters

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

### -CompensationAndBenefitsRepresentationAllowance
Person's representation allowance, maximum length 50 characters

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

### -CompensationAndBenefitsHotelAllowance
Person's hotel allowance, maximum length 50 characters

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

### -CompensationAndBenefitsOtherBenefits
Person's other benefits, maximum length 50 characters

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
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
