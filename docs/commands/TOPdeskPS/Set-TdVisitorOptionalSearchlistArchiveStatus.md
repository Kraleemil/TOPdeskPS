---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdVisitorOptionalSearchlistArchiveStatus
schema: 2.0.0
---

# Set-TdVisitorOptionalSearchlistArchiveStatus

## SYNOPSIS
Archive optional searchlist

## SYNTAX

### Tab_Searchlist_Id_Archive (Default)
```
Set-TdVisitorOptionalSearchlistArchiveStatus -Tab <string> -Searchlist <string> -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Tab_Searchlist_Id_Unarchive
```
Set-TdVisitorOptionalSearchlistArchiveStatus -Tab <string> -Searchlist <string> -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/visitorOptionalSearchlist/{tab}/{searchlist}/{identifier}/archive (parameter set Tab_Searchlist_Id_Archive)
Archive optional searchlist

POST /tas/api/visitorOptionalSearchlist/{tab}/{searchlist}/{identifier}/unarchive (parameter set Tab_Searchlist_Id_Unarchive)
Unarchive optional searchlist

## EXAMPLES

### EXAMPLE 1
```
Set-TdVisitorOptionalSearchlistArchiveStatus -Tab $tab -Searchlist $searchlist -Id $id -Archive
```

Archive optional searchlist

### EXAMPLE 2
```
Set-TdVisitorOptionalSearchlistArchiveStatus -Tab $tab -Searchlist $searchlist -Id $id -Unarchive
```

Unarchive optional searchlist

## PARAMETERS

### -Tab
tab index, 1 or 2

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
searchlist index on this tab, from 1 to 5

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
The id or name of the entry to change This can be the id or the number.

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
Selects this operation: Archive optional searchlist

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
Selects this operation: Unarchive optional searchlist

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

[https://developers.topdesk.com/explorer/?page=visitors](https://developers.topdesk.com/explorer/?page=visitors)
