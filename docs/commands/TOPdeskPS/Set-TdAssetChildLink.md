---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetChildLink
schema: 2.0.0
---

# Set-TdAssetChildLink

## SYNOPSIS
Sets the children of an asset.

## SYNTAX

```
Set-TdAssetChildLink [-AssetId] <string> [[-Ids] <string[]>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/assetmgmt/import/assets/{assetId}/links/child
Sets the children of an asset. The request body contains a list of IDs of assets that should be children of the asset. The following rules apply:

- This operation is only available for active assets with a relationships widget.
- The specified list of assets represents the desired list of linked children.       Assets in the list that were not yet linked to the asset as children, will be linked.       Assets that were linked to the asset as children, but do not appear in the list,       will be unlinked.
- If the asset is itself already a direct or indirect child of one of the supplied assets,       the linking with this specific asset will fail.
- An asset cannot be linked to itself.
- If any errors occur while (un)linking assets, the response code will still be 200,       and the errors will be listed in the response body.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetChildLink -AssetId $assetId
```

Sets the children of an asset.

## PARAMETERS

### -AssetId
The ID of the asset whose children to set.

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

### -Ids
A list of IDs of the entities to link.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
Position: 3
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
