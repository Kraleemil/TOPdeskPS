---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncidentOperatorGroupLookup
schema: 2.0.0
---

# Get-TdIncidentOperatorGroupLookup

## SYNOPSIS
Get list of operator groups

## SYNTAX

### Default (Default)
```
Get-TdIncidentOperatorGroupLookup [-Top <int>] [-Name <string>] [-Archived] [-All] [-Role <string>] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Id
```
Get-TdIncidentOperatorGroupLookup -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/incidents/operatorgroups/lookup (parameter set Default)

GET /tas/api/incidents/operatorgroups/lookup/{id} (parameter set Id)

## EXAMPLES

### EXAMPLE 1
```
Get-TdIncidentOperatorGroupLookup
```

Get list of operator groups

### EXAMPLE 2
```
Get-TdIncidentOperatorGroupLookup -Id $id
```

Get an operator group by id

## PARAMETERS

### -Top
The maximum number of entries to return. Must be between 1 and 10000. Default is 1000.

```yaml
Type: Int32
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Only return operator groups whose name starts with this value.

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
Whether to include archived operator groups. If omitted, both archived and non-archived operator groups are returned.

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
Returns all entries, ignoring the $top parameter. Default is false. WARNING: enabling this may dramatically degrade performance.

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

### -Role
Returns only operator groups with the specified role

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

### -Start
The offset of the first item to return.

```yaml
Type: Int32
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The id of the operator group

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

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
