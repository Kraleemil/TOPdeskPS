---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdOperationalActivityAction
schema: 2.0.0
---

# New-TdOperationalActivityAction

## SYNOPSIS
Creates a new action for an operational activity.

## SYNTAX

```
New-TdOperationalActivityAction [-Id] <string> [[-MemoText] <string>] [[-Flag] <int>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operationalActivities/{identifier}/actions
Creates a new action for an operational activity.

## EXAMPLES

### EXAMPLE 1
```
New-TdOperationalActivityAction -Id $id
```

Creates a new action for an operational activity.

## PARAMETERS

### -Id
The id or number of the operational activity

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
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Flag
Can have only '0' (false) or '1' (true) value

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
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
