---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdReservationRejectionReasonArchiveStatus
schema: 2.0.0
---

# Set-TdReservationRejectionReasonArchiveStatus

## SYNOPSIS
Archives a rejection reason

## SYNTAX

### Id_Archive (Default)
```
Set-TdReservationRejectionReasonArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdReservationRejectionReasonArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservationRejectionReasons/{identifier}/archive (parameter set Id_Archive)
Archives a rejection reason for reservation requests

POST /tas/api/reservationRejectionReasons/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchives a rejection reason for reservation requests

## EXAMPLES

### EXAMPLE 1
```
Set-TdReservationRejectionReasonArchiveStatus -Id $id -Archive
```

Archives a rejection reason

### EXAMPLE 2
```
Set-TdReservationRejectionReasonArchiveStatus -Id $id -Unarchive
```

Unarchives a rejection reason

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
Selects this operation: Archives a rejection reason

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
Selects this operation: Unarchives a rejection reason

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
