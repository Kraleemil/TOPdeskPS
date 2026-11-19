---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetAssignmentBranch
schema: 2.0.0
---

# Set-TdAssetAssignmentBranch

## SYNOPSIS
Assigns branches to an asset.

## SYNTAX

```
Set-TdAssetAssignmentBranch [-TemplateId] <string> [-AssetId] <string> [[-Ids] <string[]>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/assetmgmt/assets/templateId/{templateId}/{assetId}/assignment/branches
Assigns branches to an asset. The request body contains a list of IDs of branches that should be assigned to the asset. The following rules apply:

- This operation is only available for active assets with an assignment widget.
- The specified list of branches represents the desired state of branch assignments.       Branches in the list that were not yet assigned to the asset, will be assigned.       Branches that were assigned to the asset but do not appear in the list, will be unassigned.
- If any errors occur while (un)assigning branches, the response code will still be 200,       and the errors will be listed in the response body.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetAssignmentBranch -TemplateId $templateId -AssetId $assetId
```

Assigns branches to an asset.

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
The ID of the asset to assign the branches to.

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

### -Ids
A list of IDs of the entities to link.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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
