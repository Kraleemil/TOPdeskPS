---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Move-TdKnowledgeBaseFolder
schema: 2.0.0
---

# Move-TdKnowledgeBaseFolder

## SYNOPSIS
Moves the Folder under a different parent Folder.

## SYNTAX

```
Move-TdKnowledgeBaseFolder [-Id] <string> [[-FolderId] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/folders/{identifier}/move
Moves the Folder with the given 'identifier' to the specified parent Folder.
It is necessary to have the permission to update Knowledge Items.

## EXAMPLES

### EXAMPLE 1
```
Move-TdKnowledgeBaseFolder -Id $id
```

Moves the Folder under a different parent Folder.

## PARAMETERS

### -Id
ID or the number of a Folder.

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
