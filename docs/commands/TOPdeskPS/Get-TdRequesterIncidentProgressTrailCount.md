---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterIncidentProgressTrailCount
schema: 2.0.0
---

# Get-TdRequesterIncidentProgressTrailCount

## SYNOPSIS
Get incident progress trail entry count by incident id for SSP users.

## SYNTAX

### Id (Default)
```
Get-TdRequesterIncidentProgressTrailCount -Id <string> [<CommonParameters>]
```

### Number
```
Get-TdRequesterIncidentProgressTrailCount -Number <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/incidents/id/{id}/progresstrail/count (parameter set Id)

GET /tas/api/requester/incidents/number/{number}/progresstrail/count (parameter set Number)

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterIncidentProgressTrailCount -Id $id
```

Get incident progress trail entry count by incident id for SSP users.

### EXAMPLE 2
```
Get-TdRequesterIncidentProgressTrailCount -Number 'I2401-001'
```

Get incident progress trail entry count by incident number for SSP users.

## PARAMETERS

### -Id
The incident id

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
The incident number

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
