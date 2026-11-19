---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Send-TdRequesterVisitorAttachment
schema: 2.0.0
---

# Send-TdRequesterVisitorAttachment

## SYNOPSIS
Upload a file and attach it to a visitor for SSP user

## SYNTAX

```
Send-TdRequesterVisitorAttachment [-Id] <string> [-File] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/requester/visitors/{identifier}/attachments
This is only available if SSP users can view visitors. This endpoint is not available for operators.

## EXAMPLES

### EXAMPLE 1
```
Send-TdRequesterVisitorAttachment -Id $id -File '.\file.txt'
```

Upload a file and attach it to a visitor for SSP user

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

[https://developers.topdesk.com/explorer/?page=visitors](https://developers.topdesk.com/explorer/?page=visitors)
