---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdKnowledgeBaseItemArchiveStatus
schema: 2.0.0
---

# Set-TdKnowledgeBaseItemArchiveStatus

## SYNOPSIS
Archives the Knowledge Item.

## SYNTAX

### Id_Archive (Default)
```
Set-TdKnowledgeBaseItemArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdKnowledgeBaseItemArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/knowledgeItems/{identifier}/archive (parameter set Id_Archive)
Archives the Knowledge Item with the given identifier. If the Knowledge Item is already archived nothing will change. It is necessary to have the permission to update and archive Knowledge Items.

POST /services/knowledge-base-v1/knowledgeItems/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchives the Knowledge Item with the given identifier. The Knowledge Item can only be unarchived if the parent folder is not archived. If the Knowledge Item is already unarchived nothing will change. It is necessary to have the permission to update and archive Knowledge Items.

## EXAMPLES

### EXAMPLE 1
```
Set-TdKnowledgeBaseItemArchiveStatus -Id $id -Archive
```

Archives the Knowledge Item.

### EXAMPLE 2
```
Set-TdKnowledgeBaseItemArchiveStatus -Id $id -Unarchive
```

Unarchives the Knowledge Item.

## PARAMETERS

### -Id
ID or the number of a Knowledge Item.

```yaml
Type: String
Parameter Sets: Id_Archive, Id_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archives the Knowledge Item.

```yaml
Type: SwitchParameter
Parameter Sets: Id_Archive
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchives the Knowledge Item.

```yaml
Type: SwitchParameter
Parameter Sets: Id_Unarchive
Aliases:

Required: True
Position: Named
Default value: False
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
