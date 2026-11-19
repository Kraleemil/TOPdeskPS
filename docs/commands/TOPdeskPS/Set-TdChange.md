---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/Set-TdChange
schema: 2.0.0
---

# Set-TdChange

## SYNOPSIS
Sort of sets a change, this is poorly supported by TOPdesk :/

## SYNTAX

```
Set-TdChange [-ChangeId] <string> [-BodyInput] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
does most of the change setting, poorly supported by TOPdesk, read the .LINK

## EXAMPLES

### EXAMPLE 1
```
Set-TdChange -ChangeId 'C1807-627' -BodyInput 'body text'
```

sets the body of specified change. this api is poorly supported by TOPdesk

## PARAMETERS

### -ChangeId
Id of the Change Request to be altered

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BodyInput
formatted input to match the example value linked to in the .LINK

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
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

[https://developers.topdesk.com/explorer/?page=change#/Working%20as%20an%20operator/patch_operatorChanges__identifier_](https://developers.topdesk.com/explorer/?page=change#/Working%20as%20an%20operator/patch_operatorChanges__identifier_)
