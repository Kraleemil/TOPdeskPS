---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdReservationOptionalSearchlist
schema: 2.0.0
---

# Set-TdReservationOptionalSearchlist

## SYNOPSIS
Creates an optional searchlist entry

## SYNTAX

### Tab_Searchlist (Default)
```
Set-TdReservationOptionalSearchlist -Tab <string> -Searchlist <string> [-Name <string>] [-ExternalLinkId <string>] [-ExternalLinkType <string>] [-ExternalLinkDate <string>] [-Body <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Tab_Searchlist_Id
```
Set-TdReservationOptionalSearchlist -Tab <string> -Searchlist <string> -Id <string> [-Name <string>] [-ExternalLinkId <string>] [-ExternalLinkType <string>] [-ExternalLinkDate <string>] [-Body <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/reservationsOptionalSearchlist/{tab}/{searchlist} (parameter set Tab_Searchlist)
Creates a new entry for an optional searchlist for reservations management

PATCH /tas/api/reservationsOptionalSearchlist/{tab}/{searchlist}/{identifier} (parameter set Tab_Searchlist_Id)
Updates the name or external link for an entry for an optional searchlist for reservations management

## EXAMPLES

### EXAMPLE 1
```
Set-TdReservationOptionalSearchlist -Tab $tab -Searchlist $searchlist
```

Creates an optional searchlist entry

### EXAMPLE 2
```
Set-TdReservationOptionalSearchlist -Tab $tab -Searchlist $searchlist -Id $id
```

Updates an optional searchlist entry

## PARAMETERS

### -Tab
The tab number

```yaml
Type: String
Parameter Sets: Tab_Searchlist, Tab_Searchlist_Id
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
Parameter Sets: Tab_Searchlist, Tab_Searchlist_Id
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The new name of the drop-down list entry
* must be unique (case-insensitive)
* may not be empty or blank
* maximum 100 characters

```yaml
Type: String
Parameter Sets: Tab_Searchlist, Tab_Searchlist_Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkId
The id of the entity in the external system
Size range: 'maximum 450 characters'

```yaml
Type: String
Parameter Sets: Tab_Searchlist, Tab_Searchlist_Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkType
The type of the link
Range: 'A non-zero integer formatted as string'. Each integration should use its own value. If multiple integrations use the same value, records could be shared between the integrations

```yaml
Type: String
Parameter Sets: Tab_Searchlist, Tab_Searchlist_Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkDate
The date of the synchronization

```yaml
Type: String
Parameter Sets: Tab_Searchlist, Tab_Searchlist_Id
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
Parameter Sets: Tab_Searchlist, Tab_Searchlist_Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The identifier or name of the searchlist entry This can be the id or the number.

```yaml
Type: String
Parameter Sets: Tab_Searchlist_Id
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
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
