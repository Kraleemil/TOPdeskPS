---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetDropdownOption
schema: 2.0.0
---

# Get-TdAssetDropdownOption

## SYNOPSIS
Returns a list of all own options for a given dropdown.

## SYNTAX

```
Get-TdAssetDropdownOption [-DropdownId] <string> [[-Field] <string[]>] [[-ResultSize] <int>] [-IncludeArchived] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/dropdowns/{dropdownId}
Returns a list of all options for a given dropdown that has its own options defined in Asset Management. By default, only the ID of each option is included. To also include the name, use 'field=name' as a query parameter in the URL.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetDropdownOption -DropdownId $dropdownId
```

Returns a list of all own options for a given dropdown.

## PARAMETERS

### -DropdownId
The template ID or field key of the dropdown whose options to return.

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

### -Field
Use this query parameter to also include the names of the dropdown options in the response. If not specified, only the ID will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeArchived
Whether to include archived dropdown options in the response. By default, only active dropdown options are returned.

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
Position: 3
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
