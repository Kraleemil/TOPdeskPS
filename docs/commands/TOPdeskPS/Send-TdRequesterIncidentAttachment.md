---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Send-TdRequesterIncidentAttachment
schema: 2.0.0
---

# Send-TdRequesterIncidentAttachment

## SYNOPSIS
Upload a file to an incident identified by id for a SSP user.

## SYNTAX

### Id (Default)
```
Send-TdRequesterIncidentAttachment -Id <string> -File <string> [-NonApiAttachmentUrls] [-InvisibleForCaller] [-Description <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Number
```
Send-TdRequesterIncidentAttachment -File <string> -Number <string> [-NonApiAttachmentUrls] [-InvisibleForCaller] [-Description <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/requester/incidents/id/{incidentId}/attachments (parameter set Id)

POST /tas/api/requester/incidents/number/{incidentNumber}/attachments (parameter set Number)

## EXAMPLES

### EXAMPLE 1
```
Send-TdRequesterIncidentAttachment -Id $id -File '.\file.txt'
```

Upload a file to an incident identified by id for a SSP user.

### EXAMPLE 2
```
Send-TdRequesterIncidentAttachment -Number 'I2401-001' -File '.\file.txt'
```

Upload a file to an incident identified by number for a SSP user.

## PARAMETERS

### -Id
incident id

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

### -NonApiAttachmentUrls
Whether links to bigger versions of inline images should be returned in a format that can be used by a browser (with cookie authentication) instead of by an API user

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

### -File
Path to the file to upload.

```yaml
Type: String
Parameter Sets: Id, Number
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -InvisibleForCaller
Whether the uploaded file is invisible for the caller of the incident

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

### -Description
The description of the uploaded file

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

### -Number
incident number

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
