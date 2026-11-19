---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdIncidentAttachment
schema: 2.0.0
---

# Remove-TdIncidentAttachment

## SYNOPSIS
Delete a file from an incident identified by id

## SYNTAX

### Id_AttachmentId (Default)
```
Remove-TdIncidentAttachment -Id <string> -AttachmentId <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number_AttachmentId
```
Remove-TdIncidentAttachment -AttachmentId <string> -Number <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/incidents/id/{incidentId}/attachments/{attachmentId} (parameter set Id_AttachmentId)

DELETE /tas/api/incidents/number/{incidentNumber}/attachments/{attachmentId} (parameter set Number_AttachmentId)

## EXAMPLES

### EXAMPLE 1
```
Remove-TdIncidentAttachment -Id $id -AttachmentId $attachmentId
```

Delete a file from an incident identified by id

### EXAMPLE 2
```
Remove-TdIncidentAttachment -Number 'I2401-001' -AttachmentId $attachmentId
```

Delete a file from an incident identified by number

## PARAMETERS

### -Id
The incident id

```yaml
Type: String
Parameter Sets: Id_AttachmentId
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AttachmentId
The attachment id

```yaml
Type: String
Parameter Sets: Id_AttachmentId, Number_AttachmentId
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number
The incident number

```yaml
Type: String
Parameter Sets: Number_AttachmentId
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
