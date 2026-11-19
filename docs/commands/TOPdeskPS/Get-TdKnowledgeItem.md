---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/Get-TdKnowledgeItem
schema: 2.0.0
---

# Get-TdKnowledgeItem

## SYNOPSIS
Returns Knowledge Items

## SYNTAX

```
Get-TdKnowledgeItem [[-Term] <string>] [<CommonParameters>]
```

## DESCRIPTION
Retrieve a list of knowledge items available to users of the Self-Service Portal. This is a GraphQL endpoint, which means the response object is fully determined by a user-provided string that describes:
- which attributes to retrieve
- which filters to apply
This currently only works for person accounts, this will not work for Operator accounts.

## EXAMPLES

### EXAMPLE 1
```
Get-TdKnowledgeItem -Term 'printer'
```

Gets list of all priorities

## PARAMETERS

### -Term
This is the search term that you want to filter KIs on.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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
