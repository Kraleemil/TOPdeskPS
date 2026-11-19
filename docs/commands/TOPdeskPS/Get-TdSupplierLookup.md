---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdSupplierLookup
schema: 2.0.0
---

# Get-TdSupplierLookup

## SYNOPSIS
Returns supplier id, name pairs

## SYNTAX

### Default (Default)
```
Get-TdSupplierLookup [-Name <string>] [-Archived] [-All] [-ResultSize <int>] [<CommonParameters>]
```

### Id
```
Get-TdSupplierLookup -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/suppliers/lookup (parameter set Default)

GET /tas/api/suppliers/lookup/{id} (parameter set Id)

## EXAMPLES

### EXAMPLE 1
```
Get-TdSupplierLookup
```

Returns supplier id, name pairs

### EXAMPLE 2
```
Get-TdSupplierLookup -Id $id
```

Returns a supplier id, name pair

## PARAMETERS

### -Name
Return only suppliers with name starting with this

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
Whether to return archived suppliers, if omitted both archived and non-archived will be returned

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
The id of the supplier

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
