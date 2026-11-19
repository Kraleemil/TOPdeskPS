---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetOutgoingLink
schema: 2.0.0
---

# Set-TdAssetOutgoingLink

## SYNOPSIS
Sets an asset's provided links according to a specific link type.

## SYNTAX

```
Set-TdAssetOutgoingLink [-AssetId] <string> [-LinkTypeId] <string> [[-Ids] <string[]>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/assetmgmt/import/assets/{assetId}/links/outgoing/{linkTypeId}
Sets an asset's provided links according to a specific link type.The request body contains a list of IDs of assets that should be linked to the asset. The following rules apply:

- This operation is only available for active assets with a relationships widget that provide the specified link type.
- The specified list of assets represents the desired state of provided links according to the specified link type.       Assets in the list that were not yet linked to the asset as provided links according to the specified link type, will be assigned.       Assets that were linked to the asset as provided links according to the specified link type, but do not appear in the list,      will be unlinked.
- An asset cannot be linked to itself.
- If any errors occur while (un)linking assets, the response code will still be 200,       and the errors will be listed in the response body.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetOutgoingLink -AssetId $assetId -LinkTypeId $linkTypeId
```

Sets an asset's provided links according to a specific link type.

## PARAMETERS

### -AssetId
The ID of the asset whose provided links to set.

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
