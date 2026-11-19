---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperationalSeries
schema: 2.0.0
---

# Get-TdOperationalSeries

## SYNOPSIS
Get operational series by id.

## SYNTAX

```
Get-TdOperationalSeries [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operationalSeries/{identifier}
Get operational series by id.

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperationalSeries -Id $id
```

Get operational series by id.

## PARAMETERS

### -Id
The id of the operational series. This can be the id or the number.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
