---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncidentSla
schema: 2.0.0
---

# Get-TdIncidentSla

## SYNOPSIS
Get list of SLA services

## SYNTAX

```
Get-TdIncidentSla [[-Incident] <string>] [[-Contract] <string>] [[-Person] <string>] [[-Service] <string>] [[-Branch] <string>] [[-BudgetHolder] <string>] [[-Department] <string>] [[-BranchExtraA] <string>] [[-BranchExtraB] <string>] [[-ContractDate] <datetime>] [[-CallType] <string>] [[-Category] <string>] [[-Subcategory] <string>] [[-Asset] <string>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/incidents/slas

## EXAMPLES

### EXAMPLE 1
```
Get-TdIncidentSla
```

Get list of SLA services

## PARAMETERS

### -Incident
An incident number or identifier. If specified, all other filter parameters are ignored, and exactly those SLA services that could apply to the incident will be returned. This filter accounts for the strict/loose validity setting, and contract start and end date.

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

### -Contract
Return only SLA services for the specified contract id. If specified, the other filter parameters that determine the contract (including 'person') are ignored.

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

### -Person
Shortcut for filtering contract. The values from the person card are used for the contract filtering options. If specified, the other filter parameters that determine the contract (except contractDate) are ignored.

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

### -Service
A service name or id. If specified, the other filter parameters that determine the service are ignored.

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

### -Branch
Return only SLA services where the contract applies to the specified branch. The Contract for head branch valid for subsidiary branches' setting is applied.

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

### -BudgetHolder
Name or id of a budget holder. Return only SLA services where the contract applies to the specified budget holder.

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

### -Department
Name or id of a department. Return only SLA services where the contract applies to the specified department.

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

### -BranchExtraA
Name or id of a branchExtraA. Return only SLA services where the contract applies to the specified branchExtraA.

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

### -BranchExtraB
Name or id of a branchExtraB. Return only SLA services where the contract applies to the specified branchExtraB.

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

### -ContractDate
Date on which the contract needs to be valid. If not specified, defaults to now. The date must be specified in UTC, according to ISO 8601.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CallType
Name or id of a call type. Return only SLA services where the service is available for to the specified call type.

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

### -Category
Name (default language only) or id of a category for incidents. Return only SLA services where the service is available for to the specified category.

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

### -Subcategory
Name (default language only) or id of a subcategory for incidents. Return only SLA services where the service is available for to the specified subcategory.

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

### -Asset
Name, object id or asset id. Return only SLA services where the service is linked to the specified asset.

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: 100
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

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
