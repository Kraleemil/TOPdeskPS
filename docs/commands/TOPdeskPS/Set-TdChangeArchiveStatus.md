---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdChangeArchiveStatus
schema: 2.0.0
---

# Set-TdChangeArchiveStatus

## SYNOPSIS
Archive change

## SYNTAX

### Id_Archive (Default)
```
Set-TdChangeArchiveStatus -Id <string> -Archive [-ArchiveReason <string>] [-Body <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdChangeArchiveStatus -Id <string> -Unarchive [-Body <hashtable>] [-UnarchiveActivities] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operatorChanges/{identifier}/archive (parameter set Id_Archive)
Archive change. The change must have a valid type (simple or extensive).

POST /tas/api/operatorChanges/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchive change. The change must have a valid type (simple or extensive).

## EXAMPLES

### EXAMPLE 1
```
Set-TdChangeArchiveStatus -Id $id -Archive
```

Archive change

### EXAMPLE 2
```
Set-TdChangeArchiveStatus -Id $id -Unarchive
```

Unarchive change

## PARAMETERS

### -Id
Id or number of the change to modify

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

### -ArchiveReason
Reason for archiving. Can be either reason's id or name.

```yaml
Type: String
Parameter Sets: Id_Archive
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: Id_Archive, Id_Unarchive
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archive change

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

### -UnarchiveActivities
Also unarchive activities of change.

```yaml
Type: SwitchParameter
Parameter Sets: Id_Unarchive
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchive change

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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
