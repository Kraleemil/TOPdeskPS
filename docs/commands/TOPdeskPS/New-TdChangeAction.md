---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdChangeAction
schema: 2.0.0
---

# New-TdChangeAction

## SYNOPSIS
Creates a new action for a change

## SYNTAX

```
New-TdChangeAction [[-ChangeId] <string>] [[-MemoText] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Create a simple change action for a change. Rich text is not supported.

## EXAMPLES

### EXAMPLE 1
```
<example usage>
```

Explanation of what the example does

## PARAMETERS

### -ChangeId
The UNID of the change.

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

### -MemoText
The text of this progress trail entry, if it is of type 'memo’. May not contain only whitespace characters (Spaces, New Lines, Tabs) and may not be empty. Rich text is not supported when using this object to create a new progress trail entry.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
