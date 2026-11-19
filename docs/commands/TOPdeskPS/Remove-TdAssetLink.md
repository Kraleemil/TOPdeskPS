---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdAssetLink
schema: 2.0.0
---

# Remove-TdAssetLink

## SYNOPSIS
Remove link between 2 assets.

## SYNTAX

```
Remove-TdAssetLink [-LinkId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Remove link between 2 assets.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetLink -AssetId $assetId | Remove-TdAssetLink
```

Removes the asset links for $assetId

## PARAMETERS

### -LinkId
The Id of the relation. You can get this by using Get-TdAssetLink

```yaml
Type: String
Parameter Sets: (All)
Aliases: relationId

Required: True
Position: 1
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
