---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetAction
schema: 2.0.0
---

# Get-TdAssetAction

## SYNOPSIS
Get available actions for the asset.

## SYNTAX

```
Get-TdAssetAction [-AssetId] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/assets/{assetId}/actions
Get available actions for the asset.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetAction -AssetId $assetId
```

Get available actions for the asset.

## PARAMETERS

### -AssetId
The ID of the asset

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
