---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Add-TdKnowledgeBaseFolderBranch
schema: 2.0.0
---

# Add-TdKnowledgeBaseFolderBranch

## SYNOPSIS
Links a branch to the Folder.

## SYNTAX

```
Add-TdKnowledgeBaseFolderBranch [-Id] <string> [[-BranchId] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/folders/{identifier}/branches/link
Links the specified branch to the Folder with the given 'identifier'. Only branches that are visible to the operator can be linked.
Note that it takes up to 5 minutes for the change to become effective.
It is necessary to have the permission to update Knowledge Items and the permission to read branches.

⚠️Note: It is not possible to link a branch to an archived Folder.

## EXAMPLES

### EXAMPLE 1
```
Add-TdKnowledgeBaseFolderBranch -Id $id
```

Links a branch to the Folder.

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
