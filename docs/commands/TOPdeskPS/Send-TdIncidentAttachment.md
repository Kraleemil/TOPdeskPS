---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Send-TdIncidentAttachment
schema: 2.0.0
---

# Send-TdIncidentAttachment

## SYNOPSIS
Upload a file to an incident identified by id

## SYNTAX

```
Send-TdIncidentAttachment [-Id] <string> [-File] <string> [[-Description] <string>] [-NonApiAttachmentUrls] [-InvisibleForCaller] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/incidents/id/{incidentId}/attachments

## EXAMPLES

### EXAMPLE 1
```
Send-TdIncidentAttachment -Id $id -File '.\file.txt'
```

Upload a file to an incident identified by id

## PARAMETERS

### -Id
incident id

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

### -NonApiAttachmentUrls
Whether links to bigger versions of inline images should be returned in a format that can be used by a browser (with cookie authentication) instead of by an API user

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
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

### -InvisibleForCaller
Whether the uploaded file is invisible for the caller of the incident

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of the uploaded file

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

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
