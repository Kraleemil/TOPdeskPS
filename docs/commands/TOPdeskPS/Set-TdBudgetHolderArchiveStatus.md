---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdBudgetHolderArchiveStatus
schema: 2.0.0
---

# Set-TdBudgetHolderArchiveStatus

## SYNOPSIS
Archive a budget holder

## SYNTAX

### Id_Archive (Default)
```
Set-TdBudgetHolderArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdBudgetHolderArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/budgetholders/id/{id}/archive (parameter set Id_Archive)

PATCH /tas/api/budgetholders/id/{id}/unarchive (parameter set Id_Unarchive)

## EXAMPLES

### EXAMPLE 1
```
Set-TdBudgetHolderArchiveStatus -Id $id -Archive
```

Archive a budget holder

### EXAMPLE 2
```
Set-TdBudgetHolderArchiveStatus -Id $id -Unarchive
```

Unarchive a budget holder

## PARAMETERS

### -Id
The identifier for the budgetholder

```yaml
Type: String
Parameter Sets: Id_Archive, Id_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archive a budget holder

```yaml
Type: SwitchParameter
Parameter Sets: Id_Archive
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchive a budget holder

```yaml
Type: SwitchParameter
Parameter Sets: Id_Unarchive
Aliases:

Required: True
Position: Named
Default value: False
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
