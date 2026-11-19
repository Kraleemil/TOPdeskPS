---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetFieldValue
schema: 2.0.0
---

# Get-TdAssetFieldValue

## SYNOPSIS
Returns Asset field values

## SYNTAX

```
Get-TdAssetFieldValue [-FieldId] <string> [-UseV2] [<CommonParameters>]
```

## DESCRIPTION
Returns a single asset field including its possible values (GET /tas/api/assetmgmt/fields/{fieldId}).

By default the version 1 media type (application/x.topdesk-am-fields-v1+json) is requested so the output keeps its old shape. TOPdesk has deprecated that media type and will remove it in a future release. Use -UseV2 to get the version 2 resource.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetField | Get-TdAssetFieldValue
```

Returns asset fieldvalues for all Asset fields.

## PARAMETERS

### -FieldId
Id of the field that you want the value for. See Get-TdAssetField

```yaml
Type: String
Parameter Sets: (All)
Aliases: id

Required: True
Position: 1
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UseV2
Request the version 2 media type (application/x.topdesk-am-fields-v2+json).

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
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
