---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Send-TdKnowledgeBaseItemAttachment
schema: 2.0.0
---

# Send-TdKnowledgeBaseItemAttachment

## SYNOPSIS
Uploads an attachment to a Knowledge Item.

## SYNTAX

```
Send-TdKnowledgeBaseItemAttachment [-Id] <string> [-File] <string> [[-Description] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/knowledgeItems/{identifier}/attachments
Uploads an attachment to an existing Knowledge Item with the given identifier. In order to upload an attachment the permission to update a Knowledge Item is necessary. Therefore, branch filters will not apply. It is not possible to upload an attachment to an archived Knowledge Item.

⚠️Note: It is not possible to update any knowledge items that live in the root of the explorer (which means they do not have a parent). Should these knowledge items exist, please use the '/move' endpoint to move them to a folder first.

## EXAMPLES

### EXAMPLE 1
```
Send-TdKnowledgeBaseItemAttachment -Id $id -File '.\file.txt'
```

Uploads an attachment to a Knowledge Item.

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

### -File
Path to the file to upload.

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

### -Description
Value for the description form field.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
