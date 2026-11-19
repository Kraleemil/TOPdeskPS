---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAccessRole
schema: 2.0.0
---

# Get-TdAccessRole

## SYNOPSIS
Retrieve a list of roles

## SYNTAX

### Default (Default)
```
Get-TdAccessRole [-Archived] [-Licensed] [-Fields <string[]>] [<CommonParameters>]
```

### Id
```
Get-TdAccessRole -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /services/permissions/roles (parameter set Default)
Retrieves a list of roles, filtered by the supplied parameters. Permission group read permission is required.

GET /services/permissions/roles/{id} (parameter set Id)
Retrieves a single role. Permission group read permission is required.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAccessRole
```

Retrieve a list of roles

### EXAMPLE 2
```
Get-TdAccessRole -Id $id
```

Retrieve a role by its id

## PARAMETERS

### -Archived
Return only roles that are archived or not archived.

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

### -Licensed
Return only roles that are licensed or not licensed.

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

### -Fields
Fields to include in the response, separated by comma. The option 'all' returns all allowed fields.

```yaml
Type: String[]
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The id of the role.

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

[https://developers.topdesk.com/explorer/?page=access-roles](https://developers.topdesk.com/explorer/?page=access-roles)
