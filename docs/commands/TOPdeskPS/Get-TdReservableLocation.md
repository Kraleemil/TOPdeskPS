---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReservableLocation
schema: 2.0.0
---

# Get-TdReservableLocation

## SYNOPSIS
Returns a list of reservable locations

## SYNTAX

### Default (Default)
```
Get-TdReservableLocation [-Fields <string[]>] [-BranchId <string[]>] [-ResultSize <int>] [<CommonParameters>]
```

### Id
```
Get-TdReservableLocation -Id <string> [-Fields <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/reservableLocations (parameter set Default)
Returns a list of reservable, non-archived locations

GET /tas/api/reservableLocations/{id} (parameter set Id)
Returns a reservable location by id

## EXAMPLES

### EXAMPLE 1
```
Get-TdReservableLocation
```

Returns a list of reservable locations

### EXAMPLE 2
```
Get-TdReservableLocation -Id $id
```

Returns a reservable location by id

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

### -BranchId
The UUID of the branch of the location. Only locations which are part of any specified branch will be returned. Multiple values may be specified by providing the parameter multiple times.

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

### -Id
The id of the item.

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
