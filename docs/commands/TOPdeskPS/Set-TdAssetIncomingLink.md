---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetIncomingLink
schema: 2.0.0
---

# Set-TdAssetIncomingLink

## SYNOPSIS
Sets an asset's dependencies according to a specific link type.

## SYNTAX

```
Set-TdAssetIncomingLink [-AssetId] <string> [-LinkTypeId] <string> [[-Ids] <string[]>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/assetmgmt/import/assets/{assetId}/links/incoming/{linkTypeId}
Sets an asset's dependencies according to a specific link type. The request body contains a list of IDs of assets (or even of a single stock) that should be linked to the asset. The following rules apply:

- This operation is only available for active assets.
- An asset is required to have a template that has a relationships widget in order to be able to link it to another asset.
- An asset is required to have a template that has a linked stock widget in order to be able to link it to a stock.
- The specified list of assets represents the desired state of dependencies according to the specified link type.       Assets in the list that were not yet linked to the asset as dependencies according to the specified link type, will be assigned.       Assets that were linked to the asset as dependencies according to the specified link type, but do not appear in the list,       will be unlinked. The same is true when the specified list contains the ID if a single stock, with one important       difference: the link type can only be dad98dad-054b-41ae-a727-3e3b37342739 ("asset is in stock").
- If one of the supplied assets has a template that does not provide the specified link type,       the linking with this specific asset will fail.
- An asset cannot be linked to itself.
- If any errors occur while (un)linking assets, the response code will still be 200,       and the errors will be listed in the response body.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetIncomingLink -AssetId $assetId -LinkTypeId $linkTypeId
```

Sets an asset's dependencies according to a specific link type.

## PARAMETERS

### -AssetId
The ID of the asset whose dependencies to set.

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

### -LinkTypeId
The ID of the link type.

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

### -Ids
A list of IDs of the entities to link.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
Position: 4
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

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
