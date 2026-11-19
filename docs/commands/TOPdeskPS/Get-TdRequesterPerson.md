---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterPerson
schema: 2.0.0
---

# Get-TdRequesterPerson

## SYNOPSIS
Get list of persons for SSP user. Only returns persons that are marked as callers (requesters) and are active (not archived).

## SYNTAX

### Default (Default)
```
Get-TdRequesterPerson [-Fields <string[]>] [-Sort <string>] [-Query <string>] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Id
```
Get-TdRequesterPerson -Id <string> [-Fields <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/persons (parameter set Default)
NOTE: For performance reasons this endpoint will only include a limited set of fields by default. To get different or specific fields, please use the 'fields' parameter.

GET /tas/api/requester/persons/{id} (parameter set Id)
NOTE: For performance reasons this endpoint will only include a limited set of fields by default. To get different or specific fields, please use the 'fields' parameter.

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterPerson
```

Get list of persons for SSP user. Only returns persons that are marked as callers (requesters) and are active (not archived).

### EXAMPLE 2
```
Get-TdRequesterPerson -Id $id
```

Get person by id for SSP user. Only returns the person when it is marked as a caller (requester) and is active (not archived).

## PARAMETERS

### -Fields
Only include these specific fields in the response. The following fields are supported:
'id', 'firstName', 'surName', 'dynamicName', 'phoneNumber', 'mobileNumber', 'fax', 'email', 'jobTitle', 'department', 'department.id', 'department.name', 'city', 'branch', 'branch.id', 'branch.name', 'branch.phoneNumber', 'location', 'location.id', 'location.name'.

```yaml
Type: String[]
Parameter Sets: Default, Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
The returned objects are sorted by the given field names, and by the given ascending/descending directions.
When no direction is given 'asc' will be used by default.

All enabled fields are supported.

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

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the
tutorial.
Additionally, this version supports the =gt=, =ge=, =lt=, and =le= operators for text.
All enabled fields are supported.

Archived persons are never returned.

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
The person id

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
