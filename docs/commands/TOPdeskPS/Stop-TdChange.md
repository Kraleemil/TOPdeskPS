---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Stop-TdChange
schema: 2.0.0
---

# Stop-TdChange

## SYNOPSIS
Cancel extensive change

## SYNTAX

```
Stop-TdChange [-Id] <string> [[-CanceledById] <string>] [[-CancelDate] <string>] [[-CancelReason] <string>] [[-Action] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operatorChanges/{identifier}/cancel
Cancel extensive change. The change needs to be in 'progress' or 'evaluation' phase.

## EXAMPLES

### EXAMPLE 1
```
Stop-TdChange -Id $id
```

Cancel extensive change

## PARAMETERS

### -Id
Id or number of the change to modify

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

### -CanceledById
Id of an operator or a person. If this id represents operator then the operator needs to have 'Extensive Change Operator' task assigned.
If id represents person that person needs to be a manager.

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

### -CancelDate
Effective date of change cancellation

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -CancelReason
Reason for cancellation. Can be either reason's id or name

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Action
Additional information regarding the cancellation. Will be added to progress-trail

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
Position: 6
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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
