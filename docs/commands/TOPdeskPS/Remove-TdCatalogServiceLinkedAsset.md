---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdCatalogServiceLinkedAsset
schema: 2.0.0
---

# Remove-TdCatalogServiceLinkedAsset

## SYNOPSIS
Unlink an asset from a service.

## SYNTAX

```
Remove-TdCatalogServiceLinkedAsset [-Id] <string> [-ObjectId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/services/{id}/linkedAssets/{objectId}
Removes the link between an asset and a service. You can't unlink an asset from a service if either or both cards are archived.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdCatalogServiceLinkedAsset -Id $id -ObjectId $objectId
```

Unlink an asset from a service.

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

### -ObjectId
The (object) id of the asset

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=services](https://developers.topdesk.com/explorer/?page=services)
