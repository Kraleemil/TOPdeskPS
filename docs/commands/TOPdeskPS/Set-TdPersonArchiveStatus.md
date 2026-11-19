---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdPersonArchiveStatus
schema: 2.0.0
---

# Set-TdPersonArchiveStatus

## SYNOPSIS
Archive a person and its linked operator if there is one

## SYNTAX

### Id_Archive (Default)
```
Set-TdPersonArchiveStatus -Id <string> -Archive [-ReasonId <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdPersonArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/persons/id/{id}/archive (parameter set Id_Archive)

PATCH /tas/api/persons/id/{id}/unarchive (parameter set Id_Unarchive)

## EXAMPLES

### EXAMPLE 1
```
Set-TdPersonArchiveStatus -Id $id -Archive
```

Archive a person and its linked operator if there is one

### EXAMPLE 2
```
Set-TdPersonArchiveStatus -Id $id -Unarchive
```

Unarchive a person

## PARAMETERS

### -Id
The id of the person to archive.

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

### -ReasonId
Id of the reason.

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

### -Archive
Selects this operation: Archive a person and its linked operator if there is one

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
Selects this operation: Unarchive a person

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
