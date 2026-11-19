---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/New-TdBranch
schema: 2.0.0
---

# New-TdBranch

## SYNOPSIS
Creates a new branch

## SYNTAX

```
New-TdBranch [-Name] <string> [[-Specification] <string>] [[-ClientReferenceNumber] <string>] [[-Phone] <string>] [[-fax] <string>] [[-Email] <string>] [[-Website] <string>] [-BranchType] <string> [[-HeadBranchId] <Object>] [[-Address] <hashtable>] [[-PostalAddress] <hashtable>] [[-OptionalFields1] <hashtable>] [[-OptionalFields2] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
creates a new branch

## EXAMPLES

### EXAMPLE 1
```
New-TdBranch -Name 'New Branch' -Branch Type 'independentBranch' -Phone '555-555-5555'
```

creates a new branch

### EXAMPLE 2
```
New-TdBranch -Name 'Subsidiary of AlphaBranch' -BranchType 'hasAHeadBranch' -HeadBranchId (Get-TdBranch -name 'AlphaBranch').id
```



## PARAMETERS

### -Name
Name of the branch

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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
Position: 2
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
Position: 3
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
Position: 4
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
Position: 5
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
Position: 6
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
Position: 7
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

Required: True
Position: 8
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
Position: 9
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Address
Address

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

### -PostalAddress
Postal Address

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OptionalFields1
optional

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OptionalFields2
optional

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
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
