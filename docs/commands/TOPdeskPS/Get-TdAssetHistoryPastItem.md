---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetHistoryPastItem
schema: 2.0.0
---

# Get-TdAssetHistoryPastItem

## SYNOPSIS
Returns list of items from audit log and optionally from external sources which are related to the specified asset.

## SYNTAX

```
Get-TdAssetHistoryPastItem [-AssetId] <string> [[-ExcludedCategories] <string>] [[-LastSeen] <string>] [[-ResultSize] <int>] [-IncludeAuxiliaryInfo] [-IncludeExternalItems] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/assets/{assetId}/history/pastItems
Read permission is required for the particular asset.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetHistoryPastItem -AssetId $assetId
```

Returns list of items from audit log and optionally from external sources which are related to the specified asset.

## PARAMETERS

### -AssetId
Id of the asset.

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

### -ExcludedCategories
It's possible to filter for different categories of items. This parameter can contain a comma-separated list of event filter IDs which should be excluded from the result. If it's not given, all items are returned. Possible values (with the resource categories for which they are applicable in parentheses, where 'all' means every resource category):

- asset_management_assignment_modifications (all)
- asset_management_document_modifications (asset)
- asset_management_modifications (all)
- asset_management_relationship_modifications (all)
- asset_management_reservation_setting_modifications ...

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

### -LastSeen
Used for paging. It contains a surrogate key which is derived from an event. (date / type / id) If this is given, only those events will be returned which have alphabetically smaller key than the given parameter. This mechanism supports paging for multiple events in the same millisecond.

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

### -IncludeAuxiliaryInfo
If it's set to true, the response will contain further data(formatting info, translation info, meta-data) which is used internally by the standard frontend and it's subject to breaking changes.

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

### -IncludeExternalItems
Whether to include items from external sources. When an asset appears on a module card (first line incident, change request, etc) in the object / location block, usually it's considered to be an external event from Asset Management's perspective. Note, that Asset Management can't guarantee immutability and integrity of external events.

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
