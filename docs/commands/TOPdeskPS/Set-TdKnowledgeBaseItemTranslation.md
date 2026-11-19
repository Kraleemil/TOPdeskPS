---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdKnowledgeBaseItemTranslation
schema: 2.0.0
---

# Set-TdKnowledgeBaseItemTranslation

## SYNOPSIS
Creates a new translation for the Knowledge Item.

## SYNTAX

```
Set-TdKnowledgeBaseItemTranslation [-Id] <string> [-Language] <string> [[-Title] <string>] [[-Description] <string>] [[-Content] <string>] [[-CommentsForOperators] <string>] [[-Keywords] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/knowledgeItems/{identifier}/translations/{language}
Creates a new translation for the Knowledge Item with the given 'identifier' in the specified 'language'. The language must be in TOPdesk's language list. It is necessary to have the permission to update Knowledge Items.

⚠️Note: It is not possible to create a translation for an archived Knowledge Item.

⚠️Note: It is not possible to update any knowledge items that live in the root of the explorer (which means they do not have a parent). Should these knowledge items exist, please use the '/move' endpoint to move them to a folder first.

## EXAMPLES

### EXAMPLE 1
```
Set-TdKnowledgeBaseItemTranslation -Id $id -Language $language
```

Creates a new translation for the Knowledge Item.

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

### -Language
The language of the Knowledge Item content, in BCP 47 format.

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

### -Title
Title of the Knowledge Item.

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

### -Description
The description of the Knowledge Item. The maximum text length (excluding tags) is 50000 characters.
The following html tags can be used to format the text:
* italic \ or \
* bold: \ or \
* underline: \
* link: \
* line break: \
* \
and \
tags are left as they are, but a line break (same as with \) is added afterwards

Note: HTML entities can be used to encode characters that are reserved in HTML, e.g., use \< instead of <.

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

### -Content
The content of the Knowledge Item. The maximum text length (excluding tags) is 50000 characters.
The following html tags can be used to format the text:
* italic \ or \
* bold: \ or \
* underline: \
* link: \
* images: \ (When creating or updating Knowledge Items, images must have been uploaded to the Knowledge Item with the help of the corresponding endpoint. The images are uniquely identified by their name and the image height and width have to be given (in pixel).)
* line break: \
* \
and \
tags are left as they are, but a line break (same as with \) is added afterwards

Note: HTML ...

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

### -CommentsForOperators
The comments for operators accessing this Knowledge Item. The maximum text length (excluding tags) is 50000 characters.
The following html tags can be used to format the text:
* italic \ or \
* bold: \ or \
* underline: \
* link: \
* images: \ (When creating or updating Knowledge Items, images must have been uploaded to the Knowledge Item with the help of the corresponding endpoint. The images are uniquely identified by their name and the image height and width have to be given (in pixel).)
* line break: \
* \
and \
tags are left as they are, but a line break (same as with \) is added ...

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

### -Keywords
List of tags/keywords used for search. The list is represented as a single string (whitespace or comma separated).

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
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
