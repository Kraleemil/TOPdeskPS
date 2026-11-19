---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/New-TdDepartment
schema: 2.0.0
---

# New-TdDepartment

## SYNOPSIS
Creates a new Department

## SYNTAX

### Name
```
New-TdDepartment -Name <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ExternalLink
```
New-TdDepartment -externalLinkId <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates a new department

## EXAMPLES

### EXAMPLE 1
```
New-TdDepartment -Name 'TestDepartment'
```

Creates a new Department named 'TestDepartment'

## PARAMETERS

### -Name
Name of new department

```yaml
Type: String
Parameter Sets: Name
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -externalLinkId
external link ID

```yaml
Type: String
Parameter Sets: ExternalLink
Aliases:

Required: True
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
