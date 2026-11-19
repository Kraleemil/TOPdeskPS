---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/Get-TdAssetTemplateBlank
schema: 2.0.0
---

# Get-TdAssetTemplateBlank

## SYNOPSIS
Returns blank asset cards

## SYNTAX

### Name (Default)
```
Get-TdAssetTemplateBlank [-TemplateName] <string> [<CommonParameters>]
```

### Id
```
Get-TdAssetTemplateBlank -TemplateId <string> [<CommonParameters>]
```

## DESCRIPTION
Returns a blank asset card for a template (GET /tas/api/assetmgmt/assets/blank), by template name or id. The result shows all the fields on the card and their properties.
Use it to see the mandatory fields of the asset, and with that, create new assets of that type.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetTemplateBlank -TemplateName 'Network Device'
```

Returns all fields on the card for the template specified.

### EXAMPLE 2
```
Get-TdAssetTemplate | Where-Object name -eq 'Network Device' | Get-TdAssetTemplateBlank
```

Returns the blank card of the template, using its id.

## PARAMETERS

### -TemplateName
Name of the template.

```yaml
Type: String
Parameter Sets: Name
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateId
Id of the template. See Get-TdAssetTemplate.

```yaml
Type: String
Parameter Sets: Id
Aliases: Id

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
