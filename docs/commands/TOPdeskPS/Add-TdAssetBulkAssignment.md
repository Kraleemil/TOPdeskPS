---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Add-TdAssetBulkAssignment
schema: 2.0.0
---

# Add-TdAssetBulkAssignment

## SYNOPSIS
Add branch, location, person and person group assignments to assets, stocks or bulk items.

## SYNTAX

```
Add-TdAssetBulkAssignment [[-AssetIds] <string[]>] [[-BranchId] <string>] [[-LinkToId] <string>] [[-LinkType] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/assetmgmt/assets/assignments
Assigns assets, stocks and bulk items with proper type of cards.

- Assets can be assigned to locations, branches, persons and person groups
- Stocks can be assigned to a single branch or location
- Bulk items can be assigned to a branches or locations

Bulk linking of multiple assets, stocks and bulk items to a single card is supported within one request.
The maximum number of assets/stocks/bulk items to be handled within a single request is 50.

The type of the assignment (linkType) and the ID of the card to be assigned is required to assign a card to the asset, stock or bulk item.

## EXAMPLES

### EXAMPLE 1
```
Add-TdAssetBulkAssignment
```

Add branch, location, person and person group assignments to assets, stocks or bulk items.

## PARAMETERS

### -AssetIds
List of assets/stocks/bulk items to be linked.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BranchId
If location is being linked, this ID can also be provided as the parent branch ID of the location. Otherwise its value is looked up automatically.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinkToId
ID of the assigned entity.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinkType
Type of the assigned entity.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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
Position: 5
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
