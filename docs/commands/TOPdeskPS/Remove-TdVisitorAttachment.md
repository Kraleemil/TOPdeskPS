---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdVisitorAttachment
schema: 2.0.0
---

# Remove-TdVisitorAttachment

## SYNOPSIS
Delete attachment from visitor

## SYNTAX

```
Remove-TdVisitorAttachment [-Id] <string> [-AttachmentId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/visitors/{identifier}/attachments/{id}
Only available for operators. For SSP Users, use /requester/visitors/{identifier}/attachments/{id} instead.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdVisitorAttachment -Id $id -AttachmentId $attachmentId
```

Delete attachment from visitor

## PARAMETERS

### -Id
The id or number of the visitor

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
id of the attachment

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

[https://developers.topdesk.com/explorer/?page=visitors](https://developers.topdesk.com/explorer/?page=visitors)
