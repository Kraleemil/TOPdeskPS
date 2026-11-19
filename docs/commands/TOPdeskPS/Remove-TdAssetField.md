---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdAssetField
schema: 2.0.0
---

# Remove-TdAssetField

## SYNOPSIS
Deletes a field permanently.

## SYNTAX

```
Remove-TdAssetField [-FieldId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/assetmgmt/fields/{fieldId}
Deletes a field permanently. It'll also delete all data recorded in the field. The field will be removed from templates, summary fields that use it, data set widgets, and saved overview filters.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdAssetField -FieldId $fieldId
```

Deletes a field permanently.

## PARAMETERS

### -FieldId
Id of the field

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
