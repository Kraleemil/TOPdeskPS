---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetGridFieldRow
schema: 2.0.0
---

# Get-TdAssetGridFieldRow

## SYNOPSIS
Retrieves a line of the grid field based on the assetId (of the line) and the hostAssetId (which is the asset the grid field belongs to).

## SYNTAX

```
Get-TdAssetGridFieldRow [-AssetId] <string> [-HostAssetId] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/assets/gridFieldAsset
Retrieves a line of the grid field based on the assetId (of the line) and the hostAssetId (which is the asset the grid field belongs to).

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetGridFieldRow -AssetId $assetId -HostAssetId $hostAssetId
```

Retrieves a line of the grid field based on the assetId (of the line) and the hostAssetId (which is the asset the grid field belongs to).

## PARAMETERS

### -AssetId
id of the requested asset (row in grid field).

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
