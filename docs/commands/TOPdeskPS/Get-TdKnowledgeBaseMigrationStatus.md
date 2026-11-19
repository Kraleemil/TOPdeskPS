---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdKnowledgeBaseMigrationStatus
schema: 2.0.0
---

# Get-TdKnowledgeBaseMigrationStatus

## SYNOPSIS
Returns if the explorer is migrated

## SYNTAX

```
Get-TdKnowledgeBaseMigrationStatus [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/explorer/migrated
Returns if the explorer is migrated or not.
This endpoint can be used until 31st of December 2026 to determine which API to use.

It is required to have read permissions on knowledge items.

## EXAMPLES

### EXAMPLE 1
```
Get-TdKnowledgeBaseMigrationStatus
```

Returns if the explorer is migrated

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
