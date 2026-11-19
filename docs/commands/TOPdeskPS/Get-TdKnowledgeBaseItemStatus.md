---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdKnowledgeBaseItemStatus
schema: 2.0.0
---

# Get-TdKnowledgeBaseItemStatus

## SYNOPSIS
Returns Knowledge Item statuses

## SYNTAX

```
Get-TdKnowledgeBaseItemStatus [[-ResultSize] <int>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/knowledgeItemStatuses
Returns the list of possible Knowledge Item statuses. It is required to have create or update permissions on knowledge items, or read permission on knowledge base settings to use this endpoint

## EXAMPLES

### EXAMPLE 1
```
Get-TdKnowledgeBaseItemStatus
```

Returns Knowledge Item statuses

## PARAMETERS

### -Archived
Whether to show archived entries. Leave out for all, or specify true/false for only archived, or only active entries, respectively.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 100
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
