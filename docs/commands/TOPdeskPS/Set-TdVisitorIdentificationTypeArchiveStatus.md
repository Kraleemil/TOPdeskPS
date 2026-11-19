---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdVisitorIdentificationTypeArchiveStatus
schema: 2.0.0
---

# Set-TdVisitorIdentificationTypeArchiveStatus

## SYNOPSIS
Archive identification type

## SYNTAX

### Id_Archive (Default)
```
Set-TdVisitorIdentificationTypeArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdVisitorIdentificationTypeArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/identificationTypes/{identifier}/archive (parameter set Id_Archive)
Archive identification type

POST /tas/api/identificationTypes/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchive identification type

## EXAMPLES

### EXAMPLE 1
```
Set-TdVisitorIdentificationTypeArchiveStatus -Id $id -Archive
```

Archive identification type

### EXAMPLE 2
```
Set-TdVisitorIdentificationTypeArchiveStatus -Id $id -Unarchive
```

Unarchive identification type

## PARAMETERS

### -Id
The id or name of the entry to change This can be the id or the number.

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
Selects this operation: Archive identification type

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
Selects this operation: Unarchive identification type

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
