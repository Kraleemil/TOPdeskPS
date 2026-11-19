---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdKnowledgeBaseItemStatusArchiveStatus
schema: 2.0.0
---

# Set-TdKnowledgeBaseItemStatusArchiveStatus

## SYNOPSIS
Archives the knowledge item status.

## SYNTAX

### Id_Archive (Default)
```
Set-TdKnowledgeBaseItemStatusArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdKnowledgeBaseItemStatusArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/knowledgeItemStatuses/{identifier}/archive (parameter set Id_Archive)
Archives the knowledge item status. It is necessary to have the permission to update the Knowledge Base settings.

POST /services/knowledge-base-v1/knowledgeItemStatuses/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchives the knowledge item status. It is necessary to have the permission to update the Knowledge Base settings.

## EXAMPLES

### EXAMPLE 1
```
Set-TdKnowledgeBaseItemStatusArchiveStatus -Id $id -Archive
```

Archives the knowledge item status.

### EXAMPLE 2
```
Set-TdKnowledgeBaseItemStatusArchiveStatus -Id $id -Unarchive
```

Unarchives the knowledge item status

## PARAMETERS

### -Id
The id or name of the searchlist entry This can be the id or the number.

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
Selects this operation: Archives the knowledge item status.

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
Selects this operation: Unarchives the knowledge item status

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
