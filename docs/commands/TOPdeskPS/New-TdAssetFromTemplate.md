---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdAssetFromTemplate
schema: 2.0.0
---

# New-TdAssetFromTemplate

## SYNOPSIS
Creates a new asset.

## SYNTAX

```
New-TdAssetFromTemplate [-TemplateId] <string> [-Body] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/assetmgmt/assets/templateId/{templateId}
Creates a new asset. The request body should contain a key:value mapping from field IDs to desired values. You can use the cardTypes operation to retrieve the available fields on a template (including their ID and type). The following rules apply:

- Values must be in the correct format for that field's type:

- BOOLEAN: A json boolean.
- NUMBER: A json number.
- STRING: A json string.
- DATE: A json string in ISO 8601 format.
- FOREIGN_KEY: A json string in uuid format.
- FOREIGN_KEY_LIST: A json array of json strings in uuid format.

- All fields which are set to 'required' on this asset type must be filled in.
- Even for asset types where the 'name' field is not required, it can not be 'null' or an empty string. It must either be a non-empty json string or omitted completely. If it is omitted, the new asset will receive a name according to the automatic numbering configured for the asset type.
- If the name of the asset is provided, it must be unique among _all_ assets (including assets of different types).

## EXAMPLES

### EXAMPLE 1
```
New-TdAssetFromTemplate -TemplateId $templateId -Body $body
```

Creates a new asset.

## PARAMETERS

### -TemplateId
The template ID specifying which type of asset to create.

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

### -Body
The request body. Is converted to JSON.

```yaml
Type: Object
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
