---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterIncident
schema: 2.0.0
---

# Get-TdRequesterIncident

## SYNOPSIS
Returns a list of incidents for SSP users.

## SYNTAX

### Default (Default)
```
Get-TdRequesterIncident [-Sort <string>] [-Query <string>] [-Fields <string[]>] [-DateFormat <string>] [-All] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Id
```
Get-TdRequesterIncident -Id <string> [<CommonParameters>]
```

### Number
```
Get-TdRequesterIncident -Number <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/incidents (parameter set Default)

GET /tas/api/requester/incidents/id/{id} (parameter set Id)

GET /tas/api/requester/incidents/number/{number} (parameter set Number)

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterIncident
```

Returns a list of incidents for SSP users.

### EXAMPLE 2
```
Get-TdRequesterIncident -Id $id
```

Returns an incident for a SSP user.

### EXAMPLE 3
```
Get-TdRequesterIncident -Number 'I2401-001'
```

Returns an incident for a SSP user.

## PARAMETERS

### -Sort
The sort order of the returned incidents. Incidents can be ordered by most of the fields. But for best performance one should order by one of the following fields: callDate, creationDate,
modificationDate, targetDate, closedDate or id. It's faster to order by 1 field only. To specify if the order should be ascending or descending,
append ":asc" or ":desc" to the field name. Multiple columns can be specified by comma-joining the
orderings. Example: sort=targetDate:asc,creationDate:desc.
Fields not allowed for sorting are: action, archivingReason, asset, attachments, bookmarked, branch, ...

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
A FIQL string to select which incidents should be returned. (See Tutorial (https://developers.topdesk.com/tutorial.html#query))

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

### -Fields
A comma-separated list of which fields should be returned. By default all fields will be returned. (slow)

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

### -DateFormat
Format of date fields in json. When set to iso8601 dates will be sent in the form of '2020-10-01T14:10:00Z'.
Otherwise old date format will be used: '2020-10-01T14:10:00.000+0000'

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

### -All
when present or when present and set to true will make all incident to be returned. Including partials and archived.
This overrides the default behaviour when only _firstLine_ and _secondLine_ incidents are returned by default. This can
be used in combinations with _query_ parameter to narrow down the requited statuses.

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
The uuid of the incident

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

### -Number
The number of the incident

```yaml
Type: String
Parameter Sets: Number
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
