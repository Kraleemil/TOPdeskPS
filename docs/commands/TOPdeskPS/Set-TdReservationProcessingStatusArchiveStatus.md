---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdReservationProcessingStatusArchiveStatus
schema: 2.0.0
---

# Set-TdReservationProcessingStatusArchiveStatus

## SYNOPSIS
Archives a reservation processing status

## SYNTAX

### Id_Archive (Default)
```
Set-TdReservationProcessingStatusArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdReservationProcessingStatusArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservationProcessingStatus/{identifier}/archive (parameter set Id_Archive)
Archives a processing status option for reservations and requests

POST /tas/api/reservationProcessingStatus/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchives a processing status option for reservations and requests

## EXAMPLES

### EXAMPLE 1
```
Set-TdReservationProcessingStatusArchiveStatus -Id $id -Archive
```

Archives a reservation processing status

### EXAMPLE 2
```
Set-TdReservationProcessingStatusArchiveStatus -Id $id -Unarchive
```

Unarchives a reservation processing status

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
Selects this operation: Archives a reservation processing status

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
Selects this operation: Unarchives a reservation processing status

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
