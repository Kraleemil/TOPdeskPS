---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdAssetStockQuantity
schema: 2.0.0
---

# Remove-TdAssetStockQuantity

## SYNOPSIS
Removes the link between a bulk item and a stock

## SYNTAX

```
Remove-TdAssetStockQuantity [-Id] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/assetmgmt/stockQuantities/{id}
Removes the link between a bulk item and a stock

## EXAMPLES

### EXAMPLE 1
```
Remove-TdAssetStockQuantity -Id $id
```

Removes the link between a bulk item and a stock

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
