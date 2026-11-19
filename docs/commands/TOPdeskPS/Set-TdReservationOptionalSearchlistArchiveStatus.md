---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdReservationOptionalSearchlistArchiveStatus
schema: 2.0.0
---

# Set-TdReservationOptionalSearchlistArchiveStatus

## SYNOPSIS
Archives an optional searchlist entry

## SYNTAX

### Tab_Searchlist_Id_Archive (Default)
```
Set-TdReservationOptionalSearchlistArchiveStatus -Tab <string> -Searchlist <string> -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Tab_Searchlist_Id_Unarchive
```
Set-TdReservationOptionalSearchlistArchiveStatus -Tab <string> -Searchlist <string> -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservationsOptionalSearchlist/{tab}/{searchlist}/{identifier}/archive (parameter set Tab_Searchlist_Id_Archive)
Archives a new entry for an optional searchlist for reservations management

POST /tas/api/reservationsOptionalSearchlist/{tab}/{searchlist}/{identifier}/unarchive (parameter set Tab_Searchlist_Id_Unarchive)
Unarchives a new entry for an optional searchlist for reservations management

## EXAMPLES

### EXAMPLE 1
```
Set-TdReservationOptionalSearchlistArchiveStatus -Tab $tab -Searchlist $searchlist -Id $id -Archive
```

Archives an optional searchlist entry

### EXAMPLE 2
```
Set-TdReservationOptionalSearchlistArchiveStatus -Tab $tab -Searchlist $searchlist -Id $id -Unarchive
```

Unarchives an optional searchlist entry

## PARAMETERS

### -Tab
The tab number

```yaml
Type: String
Parameter Sets: Tab_Searchlist_Id_Archive, Tab_Searchlist_Id_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Searchlist
The searchlist number

```yaml
Type: String
Parameter Sets: Tab_Searchlist_Id_Archive, Tab_Searchlist_Id_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The identifier or name of the searchlist entry This can be the id or the number.

```yaml
Type: String
Parameter Sets: Tab_Searchlist_Id_Archive, Tab_Searchlist_Id_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archives an optional searchlist entry

```yaml
Type: SwitchParameter
Parameter Sets: Tab_Searchlist_Id_Archive
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchives an optional searchlist entry

```yaml
Type: SwitchParameter
Parameter Sets: Tab_Searchlist_Id_Unarchive
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
