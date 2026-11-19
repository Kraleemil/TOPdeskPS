---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetStockQuantity
schema: 2.0.0
---

# Set-TdAssetStockQuantity

## SYNOPSIS
Edits bulk item quantity on a stock

## SYNTAX

```
Set-TdAssetStockQuantity [-Id] <string> [[-Quantity] <int>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/assetmgmt/stockQuantities/{id}
Edits quantity of how much bulk item is available on a given stock.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetStockQuantity -Id $id
```

Edits bulk item quantity on a stock

## PARAMETERS

### -Id
Identifies the relationship for the stock and the bulk item.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Quantity
Quantity of bulk item in stock. Negative values are rejected.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
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
Position: 3
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
