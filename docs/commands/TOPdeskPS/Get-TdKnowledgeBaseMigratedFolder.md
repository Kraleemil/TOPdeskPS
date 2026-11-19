---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdKnowledgeBaseMigratedFolder
schema: 2.0.0
---

# Get-TdKnowledgeBaseMigratedFolder

## SYNOPSIS
Returns the reference of the folder created from the knowledge identifier

## SYNTAX

```
Get-TdKnowledgeBaseMigratedFolder [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/explorer/migrated/folder/{identifier}
Returns the identifier and number of the folder created during the Explorer Migration from the provided knowledge item. This only gives results for knowledge items that used to be a parent item in the old explorer.
If a knowledge item has been deleted, you will not be able to find the folder using the knowledge item number. In this case, we did maintain the connection via the identifier, so you can use the knowledge item identifier for look-up instead.

This endpoint can be used until 31st of December 2026 to help with updating the original structure (Knowledge Items) to the new structure (Folders).

It is required to have read permissions on knowledge items, but branch filters do not apply.

## EXAMPLES

### EXAMPLE 1
```
Get-TdKnowledgeBaseMigratedFolder -Id $id
```

Returns the reference of the folder created from the knowledge identifier

## PARAMETERS

### -Id
The id or name of the knowledge item for which the folder is requested This can be the id or the number.

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
