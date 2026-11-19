---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetArchiveStatus
schema: 2.0.0
---

# Set-TdAssetArchiveStatus

## SYNOPSIS
Archives an asset.

## SYNTAX

### TemplateId_AssetId_Archive (Default)
```
Set-TdAssetArchiveStatus -TemplateId <string> -AssetId <string> -Archive [-ReasonId <string>] [-Body <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AssetId_Unarchive
```
Set-TdAssetArchiveStatus -AssetId <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AssetId_Archive
```
Set-TdAssetArchiveStatus -AssetId <string> -Archive [-ReasonId <string>] [-Body <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/assetmgmt/assets/templateId/{templateId}/{assetId}/archive (parameter set TemplateId_AssetId_Archive)
Archives an asset. The specified reason for archiving will be filled in. If the specified asset is already archived, nothing will happen (the reason for archiving will not be updated either).

POST /tas/api/assetmgmt/assets/{assetId}/archive (parameter set AssetId_Archive)
Archives the asset identified by the provided ID (assetId). To archive an asset you need to provide a reason for archiving (reasonId) in the body. The endpoint for retrieving the available reasons can be found in the General API.

POST /tas/api/assetmgmt/assets/{assetId}/unarchive (parameter set AssetId_Unarchive)
Unarchives an asset.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetArchiveStatus -TemplateId $templateId -AssetId $assetId -Archive
```

Archives an asset.

### EXAMPLE 2
```
Set-TdAssetArchiveStatus -AssetId $assetId -Archive
```

Archives an asset.

### EXAMPLE 3
```
Set-TdAssetArchiveStatus -AssetId $assetId -Unarchive
```

Unarchives an asset.

## PARAMETERS

### -TemplateId
The template ID specifying the type of the asset.

```yaml
Type: String
Parameter Sets: TemplateId_AssetId_Archive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -AssetId
The ID of the asset to be archived.

```yaml
Type: String
Parameter Sets: AssetId_Archive, AssetId_Unarchive, TemplateId_AssetId_Archive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReasonId
The ID of the reason for archiving.

```yaml
Type: String
Parameter Sets: AssetId_Archive, TemplateId_AssetId_Archive
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: AssetId_Archive, TemplateId_AssetId_Archive
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archives an asset.

```yaml
Type: SwitchParameter
Parameter Sets: AssetId_Archive, TemplateId_AssetId_Archive
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchives an asset.

```yaml
Type: SwitchParameter
Parameter Sets: AssetId_Unarchive
Aliases:

Required: True
Position: Named
Default value: False
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
