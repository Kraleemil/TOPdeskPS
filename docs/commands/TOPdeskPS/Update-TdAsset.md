---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Update-TdAsset
schema: 2.0.0
---

# Update-TdAsset

## SYNOPSIS
Updates an existing asset.

## SYNTAX

```
Update-TdAsset [-TemplateId] <string> [-AssetId] <string> [-Body] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/assetmgmt/assets/templateId/{templateId}/{assetId}
Updates an existing asset. The request body should contain a key:value mapping from field IDs to desired values. You can use the cardTypes operation to retrieve the available fields on a template (including their ID and type). The following rules apply:

- Values must be in the correct format for that field's type:

- BOOLEAN: A json boolean.
- NUMBER: A json number.
- STRING: A json string.
- DATE: A json string in ISO 8601 format.
- FOREIGN_KEY: A json string in uuid format.
- FOREIGN_KEY_LIST: A json array of json strings in uuid format.

- Only the specified fields will be updated, all others remain unchanged.
- To clear a value, set the field to null. Required fields cannot be cleared.
- The name of each asset must remain unique among _all_ assets (including assets of different types).
- If the asset to be updated is archived, it will be unarchived as a result of this operation.

## EXAMPLES

### EXAMPLE 1
```
Update-TdAsset -TemplateId $templateId -AssetId $assetId -Body $body
```

Updates an existing asset.

## PARAMETERS

### -TemplateId
The template ID specifying the type of the asset.

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

### -AssetId
The ID of the asset to be updated.

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

### -Body
The request body. Is converted to JSON.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
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
