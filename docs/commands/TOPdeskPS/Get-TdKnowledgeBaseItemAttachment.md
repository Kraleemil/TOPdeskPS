---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdKnowledgeBaseItemAttachment
schema: 2.0.0
---

# Get-TdKnowledgeBaseItemAttachment

## SYNOPSIS
Lists attachments uploaded to given Knowledge Item.

## SYNTAX

```
Get-TdKnowledgeBaseItemAttachment [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/knowledgeItems/{identifier}/attachments
Used to list all attachments that have been uploaded to the given Knowledge Item. It is necessary to have the permission to read Knowledge Items. If additionally the permission to update Knowledge Items is present, then branch filters will not apply.

## EXAMPLES

### EXAMPLE 1
```
Get-TdKnowledgeBaseItemAttachment -Id $id
```

Lists attachments uploaded to given Knowledge Item.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
