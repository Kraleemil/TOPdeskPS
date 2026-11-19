---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdCatalogServiceLinkedAsset
schema: 2.0.0
---

# Set-TdCatalogServiceLinkedAsset

## SYNOPSIS
Update properties of a link between an asset and a service.

## SYNTAX

```
Set-TdCatalogServiceLinkedAsset [-Id] <string> [-ObjectId] <string> [[-Body] <hashtable>] [-Standard] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/services/{id}/linkedAssets/{objectId}
"Update properties of a link between an asset and a service. You can't update the link if either or both cards are archived."

## EXAMPLES

### EXAMPLE 1
```
Set-TdCatalogServiceLinkedAsset -Id $id -ObjectId $objectId
```

Update properties of a link between an asset and a service.

## PARAMETERS

### -Id
The id of the service

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

### -ObjectId
The (object) id of the asset

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

### -Standard
Whether the linked service is a Standard Service for the asset.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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

[https://developers.topdesk.com/explorer/?page=services](https://developers.topdesk.com/explorer/?page=services)
