---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdKnowledgeBaseFolder
schema: 2.0.0
---

# New-TdKnowledgeBaseFolder

## SYNOPSIS
Creates a Folder with given content

## SYNTAX

```
New-TdKnowledgeBaseFolder [[-ParentId] <string>] [[-TranslationLanguage] <string>] [[-TranslationContentTitle] <string>] [[-TranslationContentDescription] <string>] [[-TranslationCreatorId] <string>] [[-TranslationCreationDate] <string>] [[-TranslationModifierId] <string>] [[-TranslationModificationDate] <string>] [[-ManagerId] <string>] [[-ExternalLinkId] <string>] [[-ExternalLinkType] <string>] [[-ExternalLinkDate] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/folders
Creates a Folder with given content. Optionally, if the 'parent' is provided, the new Folder will be a child of this Folder. Otherwise, it will be created on the top level.
It is necessary to have the permission to create Knowledge Items.
In order for an operator / operator group to be assigned as manager, the "Knowledge Base Manager" task must be selected in the Supporting Files module.

## EXAMPLES

### EXAMPLE 1
```
New-TdKnowledgeBaseFolder
```

Creates a Folder with given content

## PARAMETERS

### -ParentId
Id of the parent. An ID or a number referencing a folder.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TranslationLanguage
Language code in BCP 47 format.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TranslationContentTitle
Title of the Folder.

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

### -TranslationContentDescription
The description of the Folder. The maximum text length (excluding tags) is 50000 characters.
The following html tags can be used to format the text:
* italic \ or \
* bold: \ or \
* underline: \
* link: \
* line break: \
* \
and \
tags are left as they are, but a line break (same as with \) is added afterwards

Note: HTML entities can be used to encode characters that are reserved in HTML, e.g., ...

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TranslationCreatorId
Read-only. ID and name of the operator which created this translation.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TranslationCreationDate
Read-only. The creation date and time. Provided in ISO-8601 format and always in UTC.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TranslationModifierId
Read-only. ID and name of the operator, which updated this translation most recently.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TranslationModificationDate
Read-only. The last update date and time of the translation. Provided in ISO-8601 format and always in UTC.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ManagerId
Id of the manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkId
The id of the entity in the external system
Size range: 'maximum 450 characters'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkType
The type of the link
Range: 'A non-zero integer formatted as string'. Each integration should use its own value. If multiple integrations use the same value, records could be shared between the integrations.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkDate
The date of the synchronization.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
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
