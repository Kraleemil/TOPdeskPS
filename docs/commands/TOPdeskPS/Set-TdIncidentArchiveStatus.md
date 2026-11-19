---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdIncidentArchiveStatus
schema: 2.0.0
---

# Set-TdIncidentArchiveStatus

## SYNOPSIS
Archive an incident by id

## SYNTAX

### Id_Archive (Default)
```
Set-TdIncidentArchiveStatus -Id <string> -Archive [-ReasonId <string>] [-ReasonName <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdIncidentArchiveStatus -Id <string> -Unarchive [-UnarchivePartials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number_Archive
```
Set-TdIncidentArchiveStatus -Archive -Number <string> [-ReasonId <string>] [-ReasonName <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number_Unarchive
```
Set-TdIncidentArchiveStatus -Number <string> -Unarchive [-UnarchivePartials] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/incidents/id/{id}/archive (parameter set Id_Archive)
NOTE:
* _PATCH_ operation can be used as well
* If the incident has partial incidents they will also archived.

PUT /tas/api/incidents/number/{number}/archive (parameter set Number_Archive)
NOTE:
* _PATCH_ operation can be used as well
* If the incident has partial incidents they will also archived.

PUT /tas/api/incidents/id/{id}/unarchive (parameter set Id_Unarchive)
NOTE:
* _PATCH_ operation can be used as well

PUT /tas/api/incidents/number/{number}/unarchive (parameter set Number_Unarchive)
NOTE:
* _PATCH_ operation can be used as well

## EXAMPLES

### EXAMPLE 1
```
Set-TdIncidentArchiveStatus -Id $id -Archive
```

Archive an incident by id

### EXAMPLE 2
```
Set-TdIncidentArchiveStatus -Number 'I2401-001' -Archive
```

Archive an incident by number

### EXAMPLE 3
```
Set-TdIncidentArchiveStatus -Id $id -Unarchive
```

Unarchive an incident by id

## PARAMETERS

### -Id
The incident id

```yaml
Type: String
Parameter Sets: Id_Archive, Id_Unarchive
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
Parameter Sets: Id_Archive, Number_Archive
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
Parameter Sets: Id_Archive, Number_Archive
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archive an incident by id

```yaml
Type: SwitchParameter
Parameter Sets: Id_Archive, Number_Archive
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
Parameter Sets: Number_Archive, Number_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UnarchivePartials
Whether partial calls should also be unarchived.

```yaml
Type: SwitchParameter
Parameter Sets: Id_Unarchive, Number_Unarchive
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchive an incident by id

```yaml
Type: SwitchParameter
Parameter Sets: Id_Unarchive, Number_Unarchive
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
