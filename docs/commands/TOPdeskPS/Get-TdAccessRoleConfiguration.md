---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAccessRoleConfiguration
schema: 2.0.0
---

# Get-TdAccessRoleConfiguration

## SYNOPSIS
Retrieves a list of roleConfigurations

## SYNTAX

### Default (Default)
```
Get-TdAccessRoleConfiguration [-RoleId <string[]>] [<CommonParameters>]
```

### Id
```
Get-TdAccessRoleConfiguration -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /services/permissions/roleConfigurations (parameter set Default)
Retrieve all roleConfigurations or all roleConfigurations for a specific list of roles.

GET /services/permissions/roleConfigurations/{id} (parameter set Id)
Retrieves a permission configuration.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAccessRoleConfiguration
```

Retrieves a list of roleConfigurations

### EXAMPLE 2
```
Get-TdAccessRoleConfiguration -Id $id
```

Retrieve the roleConfiguration by id

## PARAMETERS

### -RoleId
Restricts the result to only the specified list of roles.

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
The roleConfiguration id.

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
