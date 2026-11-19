---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdChangeAttachment
schema: 2.0.0
---

# Remove-TdChangeAttachment

## SYNOPSIS
Deletes the attachment of the change

## SYNTAX

```
Remove-TdChangeAttachment [-EntityId] <string> [-AttachmentId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/operatorChanges/{entityId}/attachments/{attachmentId}
Deletes the attachment of the change

## EXAMPLES

### EXAMPLE 1
```
Remove-TdChangeAttachment -EntityId $entityId -AttachmentId $attachmentId
```

Deletes the attachment of the change

## PARAMETERS

### -EntityId
The UNID (Unique ID) or number of the change of this attachment.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
