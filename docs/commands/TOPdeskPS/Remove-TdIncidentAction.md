---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdIncidentAction
schema: 2.0.0
---

# Remove-TdIncidentAction

## SYNOPSIS
Delete action by incident id and action id

## SYNTAX

### Id_Actionid (Default)
```
Remove-TdIncidentAction -Id <string> -Actionid <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number_Actionid
```
Remove-TdIncidentAction -Actionid <string> -Number <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/incidents/id/{incidentid}/actions/{actionid} (parameter set Id_Actionid)

DELETE /tas/api/incidents/number/{incidentnumber}/actions/{actionid} (parameter set Number_Actionid)

## EXAMPLES

### EXAMPLE 1
```
Remove-TdIncidentAction -Id $id -Actionid $actionid
```

Delete action by incident id and action id

### EXAMPLE 2
```
Remove-TdIncidentAction -Number 'I2401-001' -Actionid $actionid
```

Delete action by incident number and action id

## PARAMETERS

### -Id
incident id

```yaml
Type: String
Parameter Sets: Id_Actionid
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Actionid
action id

```yaml
Type: String
Parameter Sets: Id_Actionid, Number_Actionid
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
Parameter Sets: Number_Actionid
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
