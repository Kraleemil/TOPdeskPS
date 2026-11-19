---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Save-TdManagerAuthorizableActivityChangeAttachment
schema: 2.0.0
---

# Save-TdManagerAuthorizableActivityChangeAttachment

## SYNOPSIS
Downloads the given attachment of a parent change of an activity.

## SYNTAX

```
Save-TdManagerAuthorizableActivityChangeAttachment [-Id] <string> [-AttachmentId] <string> [-OutFile] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/managerAuthorizableActivities/{id}/change/attachments/{attachmentId}
Downloads the given attachment of a parent change of an activity.

## EXAMPLES

### EXAMPLE 1
```
Save-TdManagerAuthorizableActivityChangeAttachment -Id $id -AttachmentId $attachmentId -OutFile '.\download.bin'
```

Downloads the given attachment of a parent change of an activity.

## PARAMETERS

### -Id
The UNID (Unique ID) of the activity used to select the parent change.

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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
