---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Send-TdOperationalActivityAttachment
schema: 2.0.0
---

# Send-TdOperationalActivityAttachment

## SYNOPSIS
Uploads a file attachment to the operational activity.

## SYNTAX

```
Send-TdOperationalActivityAttachment [-Id] <string> [-File] <string> [[-Description] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operationalActivities/{identifier}/attachments/upload
Suitable for adding files, but not for links. See the 'type' attribute of '#/components/schemas/attachment'.

## EXAMPLES

### EXAMPLE 1
```
Send-TdOperationalActivityAttachment -Id $id -File '.\file.txt'
```

Uploads a file attachment to the operational activity.

## PARAMETERS

### -Id
The id of the operational activity This can be the id or the number.

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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
