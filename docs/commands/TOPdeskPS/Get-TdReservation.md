---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReservation
schema: 2.0.0
---

# Get-TdReservation

## SYNOPSIS
Returns a list of reservations

## SYNTAX

### Default (Default)
```
Get-TdReservation [-Fields <string[]>] [-Query <string>] [-ResultSize <int>] [<CommonParameters>]
```

### Id
```
Get-TdReservation -Id <string> [-Fields <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/reservations (parameter set Default)
Only available for operators, for persons use /requester/reservations instead.

GET /tas/api/reservations/{identifier} (parameter set Id)
Returns a reservation

## EXAMPLES

### EXAMPLE 1
```
Get-TdReservation
```

Returns a list of reservations

### EXAMPLE 2
```
Get-TdReservation -Id $id
```

Returns a reservation

## PARAMETERS

### -Fields
Only include these specific fields in the response. Fields of sub-entities are separated with a dot

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

### -Query
A FIQL search expression to filter the result. The query parameters from earlier versions still work, but if this parameter is provided, all other filter parameters are ignored. The FIQL query syntax is documented in the tutorial.

The fields available for filtering are:

- status, archived, number, briefDescription, notes, numberOfPersons, plannedStartDate, plannedEndDate
- requester (id, email, loginName, networkLoginName, employeeNumber)
- reservedForOther (id, email, loginName, networkLoginName, employeeNumber)
- operatorGroup (id, name)
- operator (id, name)
- event (id, number)
- processingStatus (id, name)
- series (id)
- reservedFacilities.location (id, roomNumber)
- reservedFacilities.object (id, name)
- reservedFacilities.asset (id, name)
- reservedFacilities.reservedServices ...

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

### -Id
The identifier or number of the reservation

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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
