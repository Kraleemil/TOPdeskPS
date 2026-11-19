---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdKnowledgeBaseItemTranslation
schema: 2.0.0
---

# Remove-TdKnowledgeBaseItemTranslation

## SYNOPSIS
Delete a translation of the Knowledge Item.

## SYNTAX

```
Remove-TdKnowledgeBaseItemTranslation [-Id] <string> [-Language] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /services/knowledge-base-v1/knowledgeItems/{identifier}/translations/{language}
Delete the translation of the Knowledge Item with the given 'identifier' in the specified 'language'. The operation is successful if the translation was deleted or if the Knowledge Item or the translation does not exist. The translation can only be deleted if it is not the last remaining one. It is necessary to have the permission to update Knowledge Items.

⚠️Note: It is not possible to delete a translation for an archived Knowledge Item.

⚠️Note: It is not possible to update any knowledge items that live in the root of the explorer (which means they do not have a parent). Should these knowledge items exist, please use the '/move' endpoint to move them to a folder first.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdKnowledgeBaseItemTranslation -Id $id -Language $language
```

Delete a translation of the Knowledge Item.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
