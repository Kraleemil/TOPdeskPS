---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdCatalogServiceLinkedAsset
schema: 2.0.0
---

# Get-TdCatalogServiceLinkedAsset

## SYNOPSIS
Get linked assets of a service

## SYNTAX

```
Get-TdCatalogServiceLinkedAsset [-Id] <string> [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/services/{id}/linkedAssets
Returns the assets linked to the service with the provided id.

## EXAMPLES

### EXAMPLE 1
```
Get-TdCatalogServiceLinkedAsset -Id $id
```

Get linked assets of a service

## PARAMETERS

### -Id
The id of the item.

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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

[https://developers.topdesk.com/explorer/?page=services](https://developers.topdesk.com/explorer/?page=services)
