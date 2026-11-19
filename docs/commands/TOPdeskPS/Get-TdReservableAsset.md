---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReservableAsset
schema: 2.0.0
---

# Get-TdReservableAsset

## SYNOPSIS
Returns reservable assets

## SYNTAX

```
Get-TdReservableAsset [[-TemplateName] <string>] [[-TemplateId] <string>] [-From] <datetime> [-To] <datetime> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/reservableAssets
Returns reservable assets for a given time period and asset type. This endpoint is currently only available for persons.

## EXAMPLES

### EXAMPLE 1
```
Get-TdReservableAsset -From $from -To $to
```

Returns reservable assets

## PARAMETERS

### -TemplateName
The name of the asset template of which the reservable assets will be retrieved. Either templateName or templateId must be provided.

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

### -TemplateId
The id of the asset template of which the reservable assets will be retrieved. Either templateName or templateId must be provided.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -From
Available assets will be found from this time. The date should be specified according to the ISO 8601 full date-time notation, e.g. '2019-06-20T09:41:02.019Z'.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -To
Available assets will be found until this time. The date should be specified according to the ISO 8601 full date-time notation, e.g. '2019-06-20T09:41:02.019Z'.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
