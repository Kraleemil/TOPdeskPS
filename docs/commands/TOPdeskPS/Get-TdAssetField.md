---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetField
schema: 2.0.0
---

# Get-TdAssetField

## SYNOPSIS
Lists asset fields

## SYNTAX

```
Get-TdAssetField [-UseV2] [<CommonParameters>]
```

## DESCRIPTION
Returns all asset fields contained inside TOPdesk (GET /tas/api/assetmgmt/fields).

By default the version 1 media type (application/x.topdesk-am-fields-v1+json) is requested so the output keeps its old shape. TOPdesk has deprecated that media type and will remove it in a future release. Use -UseV2 to get the version 2 resource, which has different property names (id, name, etag instead of fieldName, displayName, @etag).

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetField
```

Returns all asset fields

### EXAMPLE 2
```
Get-TdAssetField -UseV2
```

Returns all asset fields in the version 2 format.

## PARAMETERS

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
