---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReportingAccessRole
schema: 2.0.0
---

# Get-TdReportingAccessRole

## SYNOPSIS
Reporting Roles endpoint returning what permissions are assigned to what users, and what users have what permissions.

## SYNTAX

```
Get-TdReportingAccessRole [[-Filter] <string>] [<CommonParameters>]
```

## DESCRIPTION
GET /services/permissions/reporting/1.0.0/roles
The endpoint returns all the roles with their assigned permissions and the linked users.

## EXAMPLES

### EXAMPLE 1
```
Get-TdReportingAccessRole
```

Reporting Roles endpoint returning what permissions are assigned to what users, and what users have what permissions.

## PARAMETERS

### -Filter
A FIQL string to select which roles should be returned. The supported operators are:

* 'eq' - equals

* 'ne' - not equals

* 'and' - and

* 'or' - or
(See FIQL Queries Tutorial (https://developers.topdesk.com/tutorial.html#query)).

The following fields are available for '$filter' parameter:

* 'id' - role id

* 'name' - role name

* 'archived' - role archived status

* 'target' - role type, supported types:

* 'default' - general permission group role

* 'admin' - admin role

* 'saassupervisor' - SaaS supervisor role

* 'principals' - list of users linked to the role

* ...

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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

[https://developers.topdesk.com/explorer/?page=access-roles](https://developers.topdesk.com/explorer/?page=access-roles)
