---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdVisitorBadgeArchiveStatus
schema: 2.0.0
---

# Set-TdVisitorBadgeArchiveStatus

## SYNOPSIS
Archive badge

## SYNTAX

### Id_Archive (Default)
```
Set-TdVisitorBadgeArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdVisitorBadgeArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/badges/{identifier}/archive (parameter set Id_Archive)
Archive badge

POST /tas/api/badges/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchive badge

## EXAMPLES

### EXAMPLE 1
```
Set-TdVisitorBadgeArchiveStatus -Id $id -Archive
```

Archive badge

### EXAMPLE 2
```
Set-TdVisitorBadgeArchiveStatus -Id $id -Unarchive
```

Unarchive badge

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
Selects this operation: Archive badge

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
Selects this operation: Unarchive badge

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
