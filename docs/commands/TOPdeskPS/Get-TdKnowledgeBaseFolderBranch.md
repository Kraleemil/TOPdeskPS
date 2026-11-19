---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdKnowledgeBaseFolderBranch
schema: 2.0.0
---

# Get-TdKnowledgeBaseFolderBranch

## SYNOPSIS
Returns all linked branches of the Folder.

## SYNTAX

```
Get-TdKnowledgeBaseFolderBranch [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/folders/{identifier}/branches
Returns all linked branches of the Folder with the given 'identifier'.
It is necessary to have the permission to update Knowledge Items and the permission to read branches. Because of the needed permission to update Knowledge Items, the branch filters do not apply on the individual folder level, however the returned branches from this endpoint are still limited to the ones visible to the operator.

## EXAMPLES

### EXAMPLE 1
```
Get-TdKnowledgeBaseFolderBranch -Id $id
```

Returns all linked branches of the Folder.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
