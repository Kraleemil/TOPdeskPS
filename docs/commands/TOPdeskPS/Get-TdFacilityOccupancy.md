---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdFacilityOccupancy
schema: 2.0.0
---

# Get-TdFacilityOccupancy

## SYNOPSIS
Returns the occupancy rates for the given facilities

## SYNTAX

```
Get-TdFacilityOccupancy [[-LocationId] <string[]>] [[-ObjectId] <string[]>] [[-PeriodStartDate] <string>] [[-PeriodEndDate] <string>] [[-TimeStart] <string>] [[-TimeEnd] <string>] [[-TimeZone] <string>] [[-WeekDay] <string>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/facilityOccupancies
Returns the occupancy rates of the selected facilities in the selected range of days, averaged for each one-hour interval. Select facilities by providing at least one locationId or objectId. Omitting both parameters will yield an empty result.

## EXAMPLES

### EXAMPLE 1
```
Get-TdFacilityOccupancy
```

Returns the occupancy rates for the given facilities

## PARAMETERS

### -LocationId
The UUID of the location to return the occupancy for. Multiple values may be specified by providing the parameter multiple times.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId
The UUID of the object to return the occupancy for. Multiple values may be specified by providing the parameter multiple times.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PeriodStartDate
The start date (inclusive) of the period for which to return the occupancy. The date must be specified in ISO 8601 full-date format, e.g. 2016-09-01

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PeriodEndDate
The end date (inclusive) of the period for which to return the occupancy. The date must be specified in ISO 8601 full-date format, e.g. 2016-09-01

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeStart
The start time of the day for which to return the occupancy. The time must be specified in 24-hour 'H:mm' time format, e.g. 8:30 or 13:00. Default value is 0:00.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeEnd
The end time of the day for which to return the occupancy. The time must be specified in 24-hour 'H:mm' time format, e.g. 8:30 or 13:00. To specify the end of the day, use 24:00. Default value is 24:00.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeZone
The time zone in which the occupancy should be calculated. The time zone must be specified according to the name in the IANA Time Zone Database, e.g. Europe/Amsterdam

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -WeekDay
The day of the week for which the occupancy should be calculated.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: 100
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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
