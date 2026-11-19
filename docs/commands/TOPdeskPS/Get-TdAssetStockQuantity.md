---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetStockQuantity
schema: 2.0.0
---

# Get-TdAssetStockQuantity

## SYNOPSIS
Queries stock quantities for either a bulk item or a stock

## SYNTAX

```
Get-TdAssetStockQuantity [[-StockId] <string>] [[-BulkItemId] <string>] [[-LastSeenName] <string>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/stockQuantities
Queries all stocks linked to the bulk item specified using 'bulkItemId' along with the quantity for each stock. When using 'stockId', the result of the query contains all bulk items linked to the specified stock along with the quantity for each bulk item.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetStockQuantity
```

Queries stock quantities for either a bulk item or a stock

## PARAMETERS

### -StockId
Identifies the stock for which quantities are to be queried. When set, the 'bulkItemId' parameter must not be provided.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BulkItemId
Identifies the bulk item for which quantities are to be queried. When set, the 'stockId' parameter must not be provided.

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

### -LastSeenName
The name of the last seen element. When set, the first element of the data set is a stock/bulk item, the name of which comes right after this one in the alphabetically ordered list of stocks/bulk items.

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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
