---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Update-TdPerson
schema: 2.0.0
---

# Update-TdPerson

## SYNOPSIS
Update a person by id (v2)

## SYNTAX

```
Update-TdPerson [-Id] <string> [[-SurName] <string>] [[-FirstName] <string>] [[-FirstInitials] <string>] [[-Prefixes] <string>] [[-BirthName] <string>] [[-EmployeeNumber] <string>] [[-TasLoginName] <string>] [[-NetworkLoginName] <string>] [[-MainframeLoginName] <string>] [[-BudgetHolderId] <string>] [[-BranchId] <string>] [[-LocationId] <string>] [[-DepartmentId] <string>] [[-LanguageId] <string>] [[-PhoneNumber] <string>] [[-MobileNumber] <string>] [[-Fax] <string>] [[-Email] <string>] [[-Title] <string>] [[-JobTitle] <string>] [[-AttentionId] <string>] [[-AttentionComment] <string>] [[-ManagerId] <string>] [[-PersonExtraFieldAId] <string>] [[-PersonExtraFieldBId] <string>] [[-Body] <hashtable>] [-HasSspAccess] [-ShowBudgetHolder] [-ShowDepartment] [-ShowBranch] [-ShowObjectsOfBranch] [-ShowSubsidiaries] [-ShowObjectsOfSubsidiaries] [-ShowAllBranches] [-AuthorizeAll] [-AuthorizeDepartment] [-AuthorizeBudgetHolder] [-AuthorizeBranch] [-AuthorizeSubsidiaryBranches] [-IsCaller] [-IsManager] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/persons/{id}
NOTE: This endpoint version is not backward compatible with the previous version of the persons endpoint. For documentation on the previous endpoint version, please refer to the document version 1.58.0.

## EXAMPLES

### EXAMPLE 1
```
Update-TdPerson -Id $id
```

Update a person by id (v2)

## PARAMETERS

### -Id
The id of the person to update.

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

### -SurName
Surname
Size range: 'maximum 50 characters'

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

### -FirstName
First name
Size range: 'maximum 30 characters'

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

### -FirstInitials
First initials
Size range: 'maximum 10 characters'

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

### -Prefixes
Prefixes
Size range: 'maximum 10 characters'

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

### -BirthName
Birth name
Size range: 'maximum 100 characters'

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

### -EmployeeNumber
Employee number
Size range: 'maximum 20 characters'

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

### -TasLoginName
Login name, operator requires permission "Settings > Login Settings", maximum '100' characters

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

### -HasSspAccess
Person has access to the Self-Service Portal

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

### -NetworkLoginName
Network login name
Size range: 'maximum 100 characters'

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

### -MainframeLoginName
Mainframe login name
Size range: 'maximum 100 characters'

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

### -BudgetHolderId
Id of the budgetHolder.

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

### -BranchId
Id of the branch.

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

### -LocationId
Id of the location.

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

### -DepartmentId
Id of the department.

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

### -LanguageId
Id of the language.

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

### -PhoneNumber
Phone number
Size range: 'maximum 25 characters'

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

### -MobileNumber
Mobile number
Size range: 'maximum 25 characters'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fax
Fax
Size range: 'maximum 25 characters'

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

### -Email
Email address
Size range: 'maximum 100 characters, only valid email addresses'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
Title
Size range: 'maximum 35 characters'

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

### -JobTitle
Job title
Size range: 'maximum 100 characters'

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

### -ShowBudgetHolder
Person can see requests with the same budget holder

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

### -ShowDepartment
Person can see requests with the same department

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

### -ShowBranch
Person can see requests with the same branch

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

### -ShowObjectsOfBranch
Person can see objects of the same branch

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

### -ShowSubsidiaries
Person can see requests with subsidiary branches (showBranches has to be true as well)

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

### -ShowObjectsOfSubsidiaries
Person can see objects of subsidiary branches (showBranches has to be true as well)

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

### -ShowAllBranches
Person can see all branches in the branch dropdown, when creating a request. This only works for forms and not for My Requests.

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

### -AuthorizeAll
Person can authorize requests with the same department, budget holder, branch or subsidiary branch (only works when the person is a manager)

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

### -AuthorizeDepartment
Person can authorize requests from the same department (only works when the person is a manager)

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

### -AuthorizeBudgetHolder
Person can authorize requests with the same budget holder (only works when the person is a manager)

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

### -AuthorizeBranch
Person can authorize requests from the same branch (only works when the person is a manager)

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

### -AuthorizeSubsidiaryBranches
Person can authorize requests from the subsidiary branches (only works when the person is a manager and authorizeBranch is true)

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

### -AttentionId
Value for attention.id.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -AttentionComment
Value for attention.comment.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 23
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsCaller
Indicates whether the person can act as a caller (requester). When true, the person can be selected as a caller when creating or updating requests.

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

### -IsManager
The manager of the person

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

### -ManagerId
Id of the manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 24
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PersonExtraFieldAId
Id of the personExtraFieldA.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 25
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PersonExtraFieldBId
Id of the personExtraFieldB.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 26
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
Position: 27
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
