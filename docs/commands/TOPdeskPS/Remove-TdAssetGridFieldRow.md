---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdAssetGridFieldRow
schema: 2.0.0
---

# Remove-TdAssetGridFieldRow

## SYNOPSIS
Deletes a row from the grid widget and updates host asset.

## SYNTAX

```
Remove-TdAssetGridFieldRow [-AssetId] <string> [-HostAssetId] <string> [[-Etag] <string>] [[-Unid] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/assetmgmt/assets/deleteGridFieldAsset
This operation changes the etag-value of the host asset which contains the dataset.The new etag is sent back in the response as the 'etag' property. In subsequent calls the newly received etag should be used.

⚠️ If the asset card, which was modified by this API call, is open in a browser, that view should be refreshed because by changing the dataset the displayed card becomes outdated and further modifications won't succeed.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdAssetGridFieldRow -AssetId $assetId -HostAssetId $hostAssetId
```

Deletes a row from the grid widget and updates host asset.

## PARAMETERS

### -AssetId
id of the row to be deleted.

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

### -HostAssetId
id of the host asset.

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

### -Etag
Current valid etag for the asset card.

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

### -Unid
ID of the asset card.

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
