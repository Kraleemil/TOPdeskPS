---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetGridFieldRow
schema: 2.0.0
---

# Set-TdAssetGridFieldRow

## SYNOPSIS
Updates an existing row.

## SYNTAX

```
Set-TdAssetGridFieldRow [-AssetId] <string> [-HostAssetId] <string> [[-Etag] <string>] [[-Status] <string>] [[-DateField] <string>] [[-DropdownField] <string>] [[-NumberField] <string>] [[-TextField] <string>] [[-Body] <hashtable>] [-StatusLocked] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/assetmgmt/assets/gridFieldAsset
Updates an existing row.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetGridFieldRow -AssetId $assetId -HostAssetId $hostAssetId
```

Updates an existing row.

## PARAMETERS

### -AssetId
The ID of the row to be edited.

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

### -HostAssetId
The ID of the host asset.

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

### -Etag
ETag for the given entity. It is used for concurrent modification checking with optimistic locking.

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

### -Status
Status shows if this asset is operational right now or not. Main field to set for triggering Impact Analysis features.

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

### -StatusLocked
Enterprise users can enable automatic propagation by setting @statusLocked to false, or stop automatic propagation and enable manual status switching by setting @statusLocked to true.

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

### -DateField
A date field example

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -DropdownField
A dropdown field example

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -NumberField
A number field example

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TextField
A text field example

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
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
Position: 9
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
