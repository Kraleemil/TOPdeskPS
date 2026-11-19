---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetGridFieldValue
schema: 2.0.0
---

# Get-TdAssetGridFieldValue

## SYNOPSIS
Gets assets of grid field.

## SYNTAX

```
Get-TdAssetGridFieldValue [-AssetId] <string> [-FieldId] <string> [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/assets/getGridFieldValues
⚠️Deprecation warning: the 'application/x.topdesk-am-assets-v1+json' media type is deprecated and is going to be removed in a future release. We strongly recommend setting the Accept header of each request to 'application/x.topdesk-am-assets-v2+json' in order to get the new version of the assets resource and to follow the best practice of depending on a specific resource version explicitly.

Timeline:
- After the end of April, 2024, support for the 'application/x.topdesk-am-assets-v1+json' media type is going to be dropped entirely.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetGridFieldValue -AssetId $assetId -FieldId $fieldId
```

Gets assets of grid field.

## PARAMETERS

### -AssetId
ID of the host asset

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

### -FieldId
ID of the grid field for which values are requested

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 100
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
