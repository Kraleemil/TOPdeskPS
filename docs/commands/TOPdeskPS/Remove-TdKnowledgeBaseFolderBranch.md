---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdKnowledgeBaseFolderBranch
schema: 2.0.0
---

# Remove-TdKnowledgeBaseFolderBranch

## SYNOPSIS
Unlinks a branch from the Folder.

## SYNTAX

```
Remove-TdKnowledgeBaseFolderBranch [-Id] <string> [[-BranchId] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/folders/{identifier}/branches/unlink
Unlinks the specified branch from the Folder with the given 'identifier'. Only branches that are visible to the operator can be unlinked.
Note that it takes up to 5 minutes for the change to become effective.
It is necessary to have the permission to update Knowledge Items and the permission to read branches.

⚠️Note: It is not possible to unlink a branch from an archived Folder.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdKnowledgeBaseFolderBranch -Id $id
```

Unlinks a branch from the Folder.

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
