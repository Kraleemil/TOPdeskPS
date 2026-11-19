---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Send-TdKnowledgeBaseItemFeedback
schema: 2.0.0
---

# Send-TdKnowledgeBaseItemFeedback

## SYNOPSIS
Adds feedback to the given Knowledge Item

## SYNTAX

```
Send-TdKnowledgeBaseItemFeedback [-Id] <string> [[-FeedbackText] <string>] [[-Body] <hashtable>] [-QuestionAnswered] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/knowledge-base-v1/knowledgeItems/{identifier}/giveFeedback
Adds feedback for the given Knowledge Item.

## EXAMPLES

### EXAMPLE 1
```
Send-TdKnowledgeBaseItemFeedback -Id $id
```

Adds feedback to the given Knowledge Item

## PARAMETERS

### -Id
ID or the number of a Knowledge Item.

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

### -QuestionAnswered
Field indicating whether the knowledge item is useful according to the user

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

### -FeedbackText
Feedback written by the user for this knowledge item

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
