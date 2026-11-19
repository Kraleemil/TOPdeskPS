---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdOperationalActivityRequest
schema: 2.0.0
---

# Set-TdOperationalActivityRequest

## SYNOPSIS
Updates an existing request of an operational activity.

## SYNTAX

```
Set-TdOperationalActivityRequest [-Id] <string> [-RequestId] <string> [[-MemoText] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operationalActivities/{identifier}/requests/{requestId}
Updates an existing request of an operational activity.

## EXAMPLES

### EXAMPLE 1
```
Set-TdOperationalActivityRequest -Id $id -RequestId $requestId
```

Updates an existing request of an operational activity.

## PARAMETERS

### -Id
The id of the operational activity This can be the id or the number.

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

### -RequestId
The id of the request

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemoText
HTML formatted text of the request.

The following html tags can be used to format the text:
- \ - Italic
- \ - Emphasized
- \ - Bold
- \ - Important
- \ - Underline
- \ - Link reference
- \ - Line break
- \ - Header size 5
- \ - Header size 6
- \
- Bulletted list
- \
- Numbered list
- \
-  - List item

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
