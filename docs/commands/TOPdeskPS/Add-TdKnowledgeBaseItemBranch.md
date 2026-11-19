---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Add-TdKnowledgeBaseItemBranch
schema: 2.0.0
---

# Add-TdKnowledgeBaseItemBranch

## SYNOPSIS
Links a branch to the Knowledge Item.

## SYNTAX

```
Add-TdKnowledgeBaseItemBranch [-Id] <string> [[-BranchId] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/knowledgeItems/{identifier}/branches/link
Links the specified branch to the Knowledge Item with the given 'identifier'. Only branches that are visible to the operator can be linked. Note that it takes up to 5 minutes for the change to become effective.It is necessary to have the permission to update Knowledge Items and the permission to read branches.

⚠️Note: It is not possible to link a branch to an archived Knowledge Item.

⚠️Note: It is not possible to update any knowledge items that live in the root of the explorer (which means they do not have a parent). Should these knowledge items exist, please use the '/move' endpoint to move them to a folder first.

## EXAMPLES

### EXAMPLE 1
```
Add-TdKnowledgeBaseItemBranch -Id $id
```

Links a branch to the Knowledge Item.

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

### -BranchId
Id of the branch.

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
