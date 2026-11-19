---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdManagerAuthorizableChangeProcessingStatus
schema: 2.0.0
---

# Set-TdManagerAuthorizableChangeProcessingStatus

## SYNOPSIS
Approves or rejects an authorized change.

## SYNTAX

```
Set-TdManagerAuthorizableChangeProcessingStatus [-Id] <string> [[-From] <string>] [[-Action] <string>] [[-Reason] <string>] [[-Comment] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/managerAuthorizableChanges/{id}/processingStatusTransitions
Approves or rejects an authorized change.

## EXAMPLES

### EXAMPLE 1
```
Set-TdManagerAuthorizableChangeProcessingStatus -Id $id
```

Approves or rejects an authorized change.

## PARAMETERS

### -Id
The UNID (Unique ID) of the change.

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

### -From
The processing status before the transition

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

### -Action
The action to be applied to the change. Possible actions are submit, approve, reject, no_go, start, implement and close.

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

### -Reason
The reason of the cancellation or rejection (unid or text)

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

### -Comment
The comment about the transition.

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
