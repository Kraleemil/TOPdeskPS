---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdIncidentRequest
schema: 2.0.0
---

# Remove-TdIncidentRequest

## SYNOPSIS
Delete request by incident id and request id

## SYNTAX

### Id_Requestid (Default)
```
Remove-TdIncidentRequest -Id <string> -Requestid <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number_Requestid
```
Remove-TdIncidentRequest -Requestid <string> -Number <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/incidents/id/{incidentid}/requests/{requestid} (parameter set Id_Requestid)

DELETE /tas/api/incidents/number/{incidentnumber}/requests/{requestid} (parameter set Number_Requestid)

## EXAMPLES

### EXAMPLE 1
```
Remove-TdIncidentRequest -Id $id -Requestid $requestid
```

Delete request by incident id and request id

### EXAMPLE 2
```
Remove-TdIncidentRequest -Number 'I2401-001' -Requestid $requestid
```

Delete request by incident number and request id

## PARAMETERS

### -Id
incident id

```yaml
Type: String
Parameter Sets: Id_Requestid
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Requestid
request id

```yaml
Type: String
Parameter Sets: Id_Requestid, Number_Requestid
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number
incident number

```yaml
Type: String
Parameter Sets: Number_Requestid
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
