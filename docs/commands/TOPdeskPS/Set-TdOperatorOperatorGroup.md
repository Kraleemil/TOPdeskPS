---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/Set-TdOperatorOperatorGroup
schema: 2.0.0
---

# Set-TdOperatorOperatorGroup

## SYNOPSIS
Link and unlink operator groups from an operator

## SYNTAX

### Link
```
Set-TdOperatorOperatorGroup -OperatorId <Object> [-LinkId <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Unlink
```
Set-TdOperatorOperatorGroup -OperatorId <Object> [-UnlinkId <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
link and unlink operator groups from an operator

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperator 'Test User' | Set-TdOperatorOperatorGroup -LinkId (Get-TdOperatorGroup 'Group1').id
```

Link the group1 operatorgroup to Test User

## PARAMETERS

### -OperatorId
Id of the operator that you want to link/unlink operator groups from

```yaml
Type: Object
Parameter Sets: (All)
Aliases: id

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LinkId
ids of groups that you want to link

```yaml
Type: String[]
Parameter Sets: Link
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnlinkId
ids of groups that you want to unlink.

```yaml
Type: String[]
Parameter Sets: Unlink
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
