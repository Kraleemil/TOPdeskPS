---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdRequesterIncident
schema: 2.0.0
---

# Set-TdRequesterIncident

## SYNOPSIS
Updates an Incident for a SSP user.

## SYNTAX

### Id (Default)
```
Set-TdRequesterIncident -Id <string> [-Action <string>] [-Closed] [-FeedbackRating <double>] [-FeedbackMessage <string>] [-Body <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number
```
Set-TdRequesterIncident -Number <string> [-Action <string>] [-Closed] [-FeedbackRating <double>] [-FeedbackMessage <string>] [-Body <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/requester/incidents/id/{id} (parameter set Id)

PATCH /tas/api/requester/incidents/number/{number} (parameter set Number)

## EXAMPLES

### EXAMPLE 1
```
Set-TdRequesterIncident -Id $id
```

Updates an Incident for a SSP user.

### EXAMPLE 2
```
Set-TdRequesterIncident -Number 'I2401-001'
```

Updates an Incident for a SSP user.

## PARAMETERS

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

### -Action
Initial action.
The following html tags can be used to format the text:

- <i>

- <em>

- <b>

- <strong>

- <u>

- <img> BASE64-encoding has to be used. Only pictures up to the size of 450x450 pixels are supported. Allowed picture-formats: gif, png, bmp, pcx, iff, ras, pnm, psd, jpg. Example: <img src="data:image/png;base64,iVBORw0KGgoAAA...">

- <br>

- <h5>

- <h6>

Can be set by persons only when the setting 'Users may reply to incidents' in the Self-Service Portal functionality is checked.

```yaml
Type: String
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Closed
Whether the incident is closed.
Can be set by persons only when the setting 'Users may close incidents' in the Self-Service Portal functionality is checked.

```yaml
Type: SwitchParameter
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -FeedbackRating
Rate incident, only available for closed incidents.
Can only be set by the caller of the incident.
Can be set by persons only when the setting 'Users can rate how an incident was handled' in the Self-Service Portal functionality is checked.
Example:

"feedbackRating" : "5"

```yaml
Type: Double
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -FeedbackMessage
Leave feedback message on incident, only available for closed incidents and when feedbackRating is given.
Can only be set by the caller of the incident.
Can be set by persons only when the setting 'Users can rate how an incident was handled' in the Self-Service Portal functionality is checked.
Example:

"feedbackMessage" : "Nice!"

```yaml
Type: String
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number
The number of the item.

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
