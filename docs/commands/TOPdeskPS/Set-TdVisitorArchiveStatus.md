---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdVisitorArchiveStatus
schema: 2.0.0
---

# Set-TdVisitorArchiveStatus

## SYNOPSIS
Archive visitor

## SYNTAX

### Id_Archive (Default)
```
Set-TdVisitorArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdVisitorArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/visitors/{identifier}/archive (parameter set Id_Archive)
Only available for operators.

POST /tas/api/visitors/{identifier}/unarchive (parameter set Id_Unarchive)
Only available for operators.

## EXAMPLES

### EXAMPLE 1
```
Set-TdVisitorArchiveStatus -Id $id -Archive
```

Archive visitor

### EXAMPLE 2
```
Set-TdVisitorArchiveStatus -Id $id -Unarchive
```

Unarchive visitor

## PARAMETERS

### -Id
The id or number of the visitor

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
Selects this operation: Archive visitor

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
Selects this operation: Unarchive visitor

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

[https://developers.topdesk.com/explorer/?page=visitors](https://developers.topdesk.com/explorer/?page=visitors)
