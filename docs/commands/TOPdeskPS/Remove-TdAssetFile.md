---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdAssetFile
schema: 2.0.0
---

# Remove-TdAssetFile

## SYNOPSIS
Removes file from an asset

## SYNTAX

```
Remove-TdAssetFile [-UploadId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Removes file from an asset

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetFile -AssetId $AssetId | Remove-TdAssetFile
```

Gets all asset files from $AssetId and then removes them.

## PARAMETERS

### -UploadId
Id of the blob that you want to remove. Use Get-TdAssetFile toreceive the id

```yaml
Type: String
Parameter Sets: (All)
Aliases: Id

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
