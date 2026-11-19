---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdKnowledgeBaseFolderArchiveStatus
schema: 2.0.0
---

# Set-TdKnowledgeBaseFolderArchiveStatus

## SYNOPSIS
Archives the Folder.

## SYNTAX

### Id_Archive (Default)
```
Set-TdKnowledgeBaseFolderArchiveStatus -Id <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdKnowledgeBaseFolderArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/folders/{identifier}/archive (parameter set Id_Archive)
Archives the Folder with the given identifier and all its children and further descendents. If the Folder is already archived nothing will change. It is necessary to have the permission to update and archive Knowledge Items.

POST /services/knowledge-base-v1/folders/{identifier}/unarchive (parameter set Id_Unarchive)
Unarchives the Folder with the given identifier and all its children and further descendents. The Folder can only be unarchived if the parent item is not archived. If the Folder is already unarchived nothing will change. It is necessary to have the permission to update and archive Knowledge Items.

## EXAMPLES

### EXAMPLE 1
```
Set-TdKnowledgeBaseFolderArchiveStatus -Id $id -Archive
```

Archives the Folder.

### EXAMPLE 2
```
Set-TdKnowledgeBaseFolderArchiveStatus -Id $id -Unarchive
```

Unarchives the Folder.

## PARAMETERS

### -Id
ID or the number of a Folder.

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
Selects this operation: Archives the Folder.

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
Selects this operation: Unarchives the Folder.

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
