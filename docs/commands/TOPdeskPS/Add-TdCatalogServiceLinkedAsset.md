---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Add-TdCatalogServiceLinkedAsset
schema: 2.0.0
---

# Add-TdCatalogServiceLinkedAsset

## SYNOPSIS
Link assets to a service

## SYNTAX

```
Add-TdCatalogServiceLinkedAsset [-Id] <string> [-Body] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/services/{id}/linkedAssets
Links assets to the service with the provided id. You can't link an asset to a service if:
- Either of them is archived.
- The asset is already linked to this service.

## EXAMPLES

### EXAMPLE 1
```
Add-TdCatalogServiceLinkedAsset -Id $id -Body $body
```

Link assets to a service

## PARAMETERS

### -Id
The id of the service

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

[https://developers.topdesk.com/explorer/?page=services](https://developers.topdesk.com/explorer/?page=services)
