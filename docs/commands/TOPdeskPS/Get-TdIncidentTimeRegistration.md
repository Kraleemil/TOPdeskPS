---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncidentTimeRegistration
schema: 2.0.0
---

# Get-TdIncidentTimeRegistration

## SYNOPSIS
Get list of time registrations. By default only time registrations entries for 1st and 2nd line incidents are returned

## SYNTAX

### Default (Default)
```
Get-TdIncidentTimeRegistration [-Sort <string>] [-Query <string>] [-Fields <string[]>] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Id
```
Get-TdIncidentTimeRegistration -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/incidents/timeregistrations (parameter set Default)
Get list of time registrations. By default only time registrations entries for 1st and 2nd line incidents are returned

GET /tas/api/incidents/timeregistrations/{id} (parameter set Id)
Returns an timeregistration by id.

## EXAMPLES

### EXAMPLE 1
```
Get-TdIncidentTimeRegistration
```

Get list of time registrations. By default only time registrations entries for 1st and 2nd line incidents are returned

### EXAMPLE 2
```
Get-TdIncidentTimeRegistration -Id $id
```

Returns an timeregistration by id.

## PARAMETERS

### -Sort
The sort order of the returned entries. To specify if the order should be ascending or descending
append ":asc" or ":desc" to the field name. Multiple columns can be specified by comma-joining the
orderings. Example: sort=timeSpent:asc,creationDate:desc. By default entries are sorted by modificationDate:desc, creationDate:desc

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
A FIQL string to select which incidents should be returned.

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
A comma-separated list of which fields should be returned. By default only id will be returned. The name of fields corresponds to the names
returned in response.

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
The uuid of the time registration

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
