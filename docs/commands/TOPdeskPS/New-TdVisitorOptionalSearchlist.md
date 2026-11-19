---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdVisitorOptionalSearchlist
schema: 2.0.0
---

# New-TdVisitorOptionalSearchlist

## SYNOPSIS
Create optional searchlist

## SYNTAX

```
New-TdVisitorOptionalSearchlist [-Tab] <string> [-Searchlist] <string> [[-Name] <string>] [[-ExternalLinkId] <string>] [[-ExternalLinkType] <string>] [[-ExternalLinkDate] <string>] [[-Body] <hashtable>] [-Archived] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/visitorOptionalSearchlist/{tab}/{searchlist}
Create optional searchlist

## EXAMPLES

### EXAMPLE 1
```
New-TdVisitorOptionalSearchlist -Tab $tab -Searchlist $searchlist
```

Create optional searchlist

## PARAMETERS

### -Tab
tab index, 1 or 2

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Searchlist
searchlist index on this tab, from 1 to 5

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Value for name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archived
Value for archived.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkId
The id of the entity in the external system
Size range: 'maximum 450 characters'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkType
The type of the link
Range: 'A non-zero integer formatted as string'. Each integration should use its own value. If multiple integrations use the same value, records could be shared between the integrations

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkDate
The date of the synchronization

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value:
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
