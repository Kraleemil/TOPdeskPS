---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Move-TdKnowledgeBaseItem
schema: 2.0.0
---

# Move-TdKnowledgeBaseItem

## SYNOPSIS
Moves the Knowledge Item under a different parent Folder.

## SYNTAX

```
Move-TdKnowledgeBaseItem [-Id] <string> [[-FolderId] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/knowledgeItems/{identifier}/move
Moves the Knowledge Item with the given 'identifier' to the specified parent Folder. It is necessary to have the permission to update Knowledge Items.

⚠️Note: The moved Knowledge Item will inherit the visibility settings of its new parent Folder.

⚠️Note: It is not possible to move an archived Knowledge Item. Please unarchive it first.

## EXAMPLES

### EXAMPLE 1
```
Move-TdKnowledgeBaseItem -Id $id
```

Moves the Knowledge Item under a different parent Folder.

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

### -FolderId
Id of the folder.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
