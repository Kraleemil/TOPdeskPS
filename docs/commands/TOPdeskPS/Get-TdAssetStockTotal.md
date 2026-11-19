---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetStockTotal
schema: 2.0.0
---

# Get-TdAssetStockTotal

## SYNOPSIS
Returns information about what is in stock.

## SYNTAX

```
Get-TdAssetStockTotal [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/stockTotals
Returns which asset type is in how many stocks and how many instances of each particular asset type is in stock. Similarly, it also returns which bulk item is in how many stocks and what is the total quantity of each particular bulk item in stock.

- Archived asset types, assets, and bulk items are always included in the list and in the counts.
- Asset types for which the requester has no read permission are excluded from the statistics.
- Bulk items that have a type for which the requester has no read permission are excluded from the statistics.
- Resources (e.g. assets) which wouldn't be visible because of branch filters are excluded from the statistics.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetStockTotal
```

Returns information about what is in stock.

## PARAMETERS

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 100
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
