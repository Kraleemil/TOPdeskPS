---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Save-TdRequesterChangeAttachment
schema: 2.0.0
---

# Save-TdRequesterChangeAttachment

## SYNOPSIS
Downloads the given attachment of a change.

## SYNTAX

```
Save-TdRequesterChangeAttachment [-EntityId] <string> [-AttachmentId] <string> [-OutFile] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requesterChanges/{entityId}/attachments/{attachmentId}
Downloads the given attachment of a change.

## EXAMPLES

### EXAMPLE 1
```
Save-TdRequesterChangeAttachment -EntityId $entityId -AttachmentId $attachmentId -OutFile '.\download.bin'
```

Downloads the given attachment of a change.

## PARAMETERS

### -EntityId
The UNID (Unique ID) of the change of this attachment.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -AttachmentId
The UNID (Unique ID) of this attachment.

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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
