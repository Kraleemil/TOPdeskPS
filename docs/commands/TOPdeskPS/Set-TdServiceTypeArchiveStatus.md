---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdServiceTypeArchiveStatus
schema: 2.0.0
---

# Set-TdServiceTypeArchiveStatus

## SYNOPSIS
Archives a service type

## SYNTAX

### Id_Archive (Default)
```
Set-TdServiceTypeArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdServiceTypeArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/serviceTypes/{identifier}/archive (parameter set Id_Archive)
Archives a service type

POST /tas/api/serviceTypes/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchives a service type

## EXAMPLES

### EXAMPLE 1
```
Set-TdServiceTypeArchiveStatus -Id $id -Archive
```

Archives a service type

### EXAMPLE 2
```
Set-TdServiceTypeArchiveStatus -Id $id -Unarchive
```

Unarchives a service type

## PARAMETERS

### -Id
The identifier or name of the searchlist entry This can be the id or the number.

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
Selects this operation: Archives a service type

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
Selects this operation: Unarchives a service type

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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
