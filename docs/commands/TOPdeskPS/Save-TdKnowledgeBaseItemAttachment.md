---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Save-TdKnowledgeBaseItemAttachment
schema: 2.0.0
---

# Save-TdKnowledgeBaseItemAttachment

## SYNOPSIS
Downloads an attachment from a Knowledge Item.

## SYNTAX

```
Save-TdKnowledgeBaseItemAttachment [-Id] <string> [-AttachmentIdentifier] <string> [-OutFile] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/knowledgeItems/{identifier}/attachments/{attachmentIdentifier}/download
Downloads an attachment with a given attachment identifier from a Knowledge Item with the given identifier. It is necessary to have the permission to read Knowledge Items. If additionally the permission to update Knowledge Items is present, then branch filters will not apply. The returned content type depends on the file type with a default of 'application/octet-stream' if the file type could not be detected.

## EXAMPLES

### EXAMPLE 1
```
Save-TdKnowledgeBaseItemAttachment -Id $id -AttachmentIdentifier $attachmentIdentifier -OutFile '.\download.bin'
```

Downloads an attachment from a Knowledge Item.

## PARAMETERS

### -Id
ID or the number of a Knowledge Item.

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

### -AttachmentIdentifier
UUID of the attachment.

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

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
