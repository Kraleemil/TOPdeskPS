---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdAsset
schema: 2.0.0
---

# Remove-TdAsset

## SYNOPSIS
Deletes the given asset

## SYNTAX

```
Remove-TdAsset [-AssetId] <string[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Deletes the given assets.It may be possible that one or more assets couldn’t be deleted because they have existing links from other components. In this case those assets’ ids will be listed in the ‘failed’ list of the response, but it doesn’t affect deletion of other assets.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdAsset -AssetId $AssetId
```

Removes all assets with id's inside $assetId.

## PARAMETERS

### -AssetId
Id of the asset to remove

```yaml
Type: String[]
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
