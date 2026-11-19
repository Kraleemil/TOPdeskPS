---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Save-TdRequesterIncidentAttachment
schema: 2.0.0
---

# Save-TdRequesterIncidentAttachment

## SYNOPSIS
Download an attachment for a SSP user.

## SYNTAX

```
Save-TdRequesterIncidentAttachment [-Id] <string> [-AttachmentId] <string> [-OutFile] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/incidents/id/{incidentId}/attachments/{attachmentId}/download

## EXAMPLES

### EXAMPLE 1
```
Save-TdRequesterIncidentAttachment -Id $id -AttachmentId $attachmentId -OutFile '.\download.bin'
```

Download an attachment for a SSP user.

## PARAMETERS

### -Id
The incident id

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

### -AttachmentId
The attachment id

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutFile
Path of the file to save the downloaded content to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
