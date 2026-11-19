---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdIncidentEscalation
schema: 2.0.0
---

# Set-TdIncidentEscalation

## SYNOPSIS
Escalate an incident by id

## SYNTAX

### Id_Escalate (Default)
```
Set-TdIncidentEscalation -Id <string> -Escalate [-ReasonId <string>] [-ReasonName <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Deescalate
```
Set-TdIncidentEscalation -Id <string> -Deescalate [-ReasonId <string>] [-ReasonName <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number_Deescalate
```
Set-TdIncidentEscalation -Number <string> -Deescalate [-ReasonId <string>] [-ReasonName <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number_Escalate
```
Set-TdIncidentEscalation -Escalate -Number <string> [-ReasonId <string>] [-ReasonName <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/incidents/id/{id}/escalate (parameter set Id_Escalate)
NOTE:
_PATCH_ operation can be used as well.
Duration and operator of linked SLA are not considered when escalating the incident.

PUT /tas/api/incidents/number/{number}/escalate (parameter set Number_Escalate)
NOTE: _PATCH_ operation can be used as well

PUT /tas/api/incidents/id/{id}/deescalate (parameter set Id_Deescalate)
NOTE: _PATCH_ operation can be used as well

PUT /tas/api/incidents/number/{number}/deescalate (parameter set Number_Deescalate)
NOTE: _PATCH_ operation can be used as well

## EXAMPLES

### EXAMPLE 1
```
Set-TdIncidentEscalation -Id $id -Escalate
```

Escalate an incident by id

### EXAMPLE 2
```
Set-TdIncidentEscalation -Number 'I2401-001' -Escalate
```

Escalate an incident by number

### EXAMPLE 3
```
Set-TdIncidentEscalation -Id $id -Deescalate
```

Deescalate an incident by id

## PARAMETERS

### -Id
The incident id

```yaml
Type: String
Parameter Sets: Id_Deescalate, Id_Escalate
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ReasonId
Id of the reason.

```yaml
Type: String
Parameter Sets: Id_Deescalate, Id_Escalate, Number_Deescalate, Number_Escalate
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReasonName
Name of the reason, as an alternative to -ReasonId.

```yaml
Type: String
Parameter Sets: Id_Deescalate, Id_Escalate, Number_Deescalate, Number_Escalate
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Escalate
Selects this operation: Escalate an incident by id

```yaml
Type: SwitchParameter
Parameter Sets: Id_Escalate, Number_Escalate
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number
The incident number

```yaml
Type: String
Parameter Sets: Number_Deescalate, Number_Escalate
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Deescalate
Selects this operation: Deescalate an incident by id

```yaml
Type: SwitchParameter
Parameter Sets: Id_Deescalate, Number_Deescalate
Aliases:

Required: True
Position: Named
Default value: False
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

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
