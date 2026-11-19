---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdKnowledgeBaseItemAttachment
schema: 2.0.0
---

# Remove-TdKnowledgeBaseItemAttachment

## SYNOPSIS
Deletes an attachment from a Knowledge Item.

## SYNTAX

```
Remove-TdKnowledgeBaseItemAttachment [-Id] <string> [-AttachmentIdentifier] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /services/knowledge-base-v1/knowledgeItems/{identifier}/attachments/{attachmentIdentifier}
Deletes an attachment with the given attachment identifier from a Knowledge Item with the given identifier. It is only possible to delete attachments from Knowledge Items that are not archived. In order to delete an attachment, the permissions to update a Knowledge Item are necessary. Therefore, branch filters will not apply.

⚠️Note: It is not possible to update any knowledge items that live in the root of the explorer (which means they do not have a parent). Should these knowledge items exist, please use the '/move' endpoint to move them to a folder first.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdKnowledgeBaseItemAttachment -Id $id -AttachmentIdentifier $attachmentIdentifier
```

Deletes an attachment from a Knowledge Item.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
