---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdChangeOrderedItem
schema: 2.0.0
---

# Remove-TdChangeOrderedItem

## SYNOPSIS
Cancel ordered items for a change

## SYNTAX

```
Remove-TdChangeOrderedItem [-Id] <string> [-Body] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/operatorChanges/{id}/orderedItems
Note: This endpoint is only available if you have the webshop licence.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdChangeOrderedItem -Id $id -Body $body
```

Cancel ordered items for a change

## PARAMETERS

### -Id
The UNID (Unique ID) or number of the Change.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Body
The request body. Is converted to JSON.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
