---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdLocationLookup
schema: 2.0.0
---

# Get-TdLocationLookup

## SYNOPSIS
Returns location id, name pairs

## SYNTAX

### Default (Default)
```
Get-TdLocationLookup [-Name <string>] [-Archived] [-All] [-ResultSize <int>] [<CommonParameters>]
```

### Id
```
Get-TdLocationLookup -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/locations/lookup (parameter set Default)

GET /tas/api/locations/lookup/{id} (parameter set Id)

## EXAMPLES

### EXAMPLE 1
```
Get-TdLocationLookup
```

Returns location id, name pairs

### EXAMPLE 2
```
Get-TdLocationLookup -Id $id
```

Returns a location id, name pair

## PARAMETERS

### -Name
Return only locations with name starting with this

```yaml
Type: String
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archived
Whether to return archived locations, if omitted both archived and non-archived will be returned

```yaml
Type: SwitchParameter
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -All
Returns all entities ignoring $top parameter. Default value is false. WARNING: enabling this may dramatically degrade your system's performance

```yaml
Type: SwitchParameter
Parameter Sets: Default
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
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The id of the location

```yaml
Type: String
Parameter Sets: Id
Aliases:

Required: True
Position: Named
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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
