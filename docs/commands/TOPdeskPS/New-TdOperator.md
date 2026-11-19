---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/New-TdOperator
schema: 2.0.0
---

# New-TdOperator

## SYNOPSIS
Create an operator

## SYNTAX

```
New-TdOperator [-SurName] <Object> [[-FirstName] <string>] [[-Gender] <string>] [[-EmployeeNumber] <string>] [[-Telephone] <string>] [[-MobileNumber] <string>] [[-NetworkLoginName] <string>] [[-Email] <string>] [-BranchId] <string> [[-Location] <string>] [[-Department] <string>] [[-BudgetHolder] <string>] [[-LoginName] <string>] [[-Password] <securestring>] [[-Tasks] <string[]>] [-LoginPermission] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Create new operators. Operator must have create permission on operators

## EXAMPLES

### EXAMPLE 1
```
New-TdOperator -Surname 'Smith' -firstname 'John' -branchId (Get-TdBranch -Name HQ).id
```

Creates a new operator name John Smith in the HQ branch

## PARAMETERS

### -SurName
Surname of the operator

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -FirstName
Firstname of the operator

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

### -Gender
The gender of the operator

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

### -EmployeeNumber
The employee number of the operator

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

### -Telephone
The telephone number for the operator

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

### -MobileNumber
Mobile number for the operator

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

### -NetworkLoginName
The network login name for the operator

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

### -Email
Email address of the operator

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

### -BranchId
The id of the branch that you want to give the operator

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Location id of the operator

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

### -Department
The department id of the operator

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

### -BudgetHolder
The budget holder id of the operator

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

### -LoginPermission
specify whether the operator has the permission to log on

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

### -LoginName
Login name, operator requires permission “Settings > Login Settings”
Is mandatory when loginPermission is set to true.

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

### -Password
Password, operator requires permission "Settings > Login Settings".
Is mandatory when “Functional Settings > Login Settings > Operator’s Section > Password mandatory on Operator card” is set.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tasks
Specify the tasks that you want the operator to have.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
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
