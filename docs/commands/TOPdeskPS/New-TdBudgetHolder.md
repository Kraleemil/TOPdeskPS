---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/New-TdBudgetHolder
schema: 2.0.0
---

# New-TdBudgetHolder

## SYNOPSIS
Creates new BudgetHolder

## SYNTAX

### Name
```
New-TdBudgetHolder -Name <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ExternalLink
```
New-TdBudgetHolder -externalLinkId <string> -ExternalLinkType <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
creates new budgetholder

## EXAMPLES

### EXAMPLE 1
```
New-TdBudgetHolder -Name 'Management'
```

Creates a new budget holdernamed 'management'

## PARAMETERS

### -Name
The name of the budget holder.

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
Id of the entity in the external system

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

### -ExternalLinkType
The Type of the link.

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
