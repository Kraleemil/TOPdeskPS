---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdAssetDropdownOption
schema: 2.0.0
---

# New-TdAssetDropdownOption

## SYNOPSIS
Retrieves or creates an option for a given dropdown.

## SYNTAX

```
New-TdAssetDropdownOption [-DropdownId] <string> [[-Name] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/assetmgmt/dropdowns/{dropdownId}
If an option with the given name (case-insensitive) already exists, the ID of that option is returned. If the existing option was archived, it will be unarchived. If no option with the given name exists, a new option is created, and the ID of the created option is returned.

## EXAMPLES

### EXAMPLE 1
```
New-TdAssetDropdownOption -DropdownId $dropdownId
```

Retrieves or creates an option for a given dropdown.

## PARAMETERS

### -DropdownId
The field key of the dropdown for which to retrieve or create an option.

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

### -Name
The name of the dropdown option.

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
