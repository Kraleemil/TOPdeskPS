---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/Set-TdBranch
schema: 2.0.0
---

# Set-TdBranch

## SYNOPSIS
update a branch by id

## SYNTAX

```
Set-TdBranch -BranchId <Object> [-Name <string>] [-Specification <string>] [-ClientReferenceNumber <string>] [-Phone <string>] [-fax <string>] [-Email <string>] [-Website <string>] [-BranchType <string>] [-HeadBranchId <Object>] [-Address <hashtable>] [-PostalAddress <hashtable>] [-OptionalFields1 <hashtable>] [-OptionalFields2 <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
update branch

## EXAMPLES

### EXAMPLE 1
```
Set-TdBranch -BranchId (Get-TdBranch -Name 'Test Branch').id -Phone '555-555-5555'
```

Updates the Test Branch phone number.

## PARAMETERS

### -BranchId
ID of the branch. See Get-TdBranch

```yaml
Type: Object
Parameter Sets: BranchId
Aliases: Id

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Name of the branch

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Specification
Branch specification

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientReferenceNumber
Client Reference Number

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Phone
Phone Number

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -fax
Fax Number

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Email
email address

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Website
Website URL

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BranchType
Define the type of branch. Optional values: 'independentBranch', 'headBranch', 'hasAHeadBranch'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -HeadBranchId
ID of head branch

```yaml
Type: Object
Parameter Sets: (All)
Aliases: HeadBranch

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Address
Hashtable containing address values

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PostalAddress
Hashtable containing postal address values

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OptionalFields1
optional see docs

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OptionalFields2
optional see docs

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
