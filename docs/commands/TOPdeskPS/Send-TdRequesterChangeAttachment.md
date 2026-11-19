---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Send-TdRequesterChangeAttachment
schema: 2.0.0
---

# Send-TdRequesterChangeAttachment

## SYNOPSIS
Uploads a file as an attachment to this change.

## SYNTAX

```
Send-TdRequesterChangeAttachment [-Id] <string> [-File] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/requesterChanges/{id}/attachments
Uploads a file as an attachment to this change.
Returns the created progress trail entry in case of success.

Be aware that this endpoint consumes multipart/form-data. More information about this format can be found on https://tools.ietf.org/html/rfc7578

## EXAMPLES

### EXAMPLE 1
```
Send-TdRequesterChangeAttachment -Id $id -File '.\file.txt'
```

Uploads a file as an attachment to this change.

## PARAMETERS

### -Id
The UNID (Unique ID) of the change of this attachment.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
