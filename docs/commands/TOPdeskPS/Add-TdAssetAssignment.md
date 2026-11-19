---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Add-TdAssetAssignment
schema: 2.0.0
---

# Add-TdAssetAssignment

## SYNOPSIS
Adds an assignment to an asset

## SYNTAX

```
Add-TdAssetAssignment -AssetId <string> -LinkType <string> [-LinkToId <string>] [-BranchId <string>] [-Body <psobject>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Updates the given asset.It may be possible that one or more assets couldn’t be deleted because they have existing links from other components. In this case those assets’ ids will be listed in the ‘failed’ list of the response, but it doesn’t affect deletion of other assets.

## EXAMPLES

### EXAMPLE 1
```
Add-TdAssetAssignment -AssetId $AssetId
```

Removes all assets with id's inside $assetId.

## PARAMETERS

### -AssetId
ID of asset which is the subject of the assignment

```yaml
Type: String
Parameter Sets: (All)
Aliases: Id

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LinkType
Some of the other ID parameters must be also provided based on the current linkType. Available values: branch, location, person, personGroup, incident
the incident linktype isn't currently documented, but it works!

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinkToId
ID of the assigned entity. If it's a location, parent branch ID must be also provided.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BranchId
Id of the branch you want to assign. If location is linked, this ID must be also provided as the parent branch ID of the location. Run Get-TdBranch for more

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
This is the body of the request. Use this to create your own bodies if the parameters aren't providing you with what you need.

```yaml
Type: PSObject
Parameter Sets: Body
Aliases:

Required: False
Position: Named
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
