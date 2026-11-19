---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Update-TdChangeActivity
schema: 2.0.0
---

# Update-TdChangeActivity

## SYNOPSIS
Updates change activities

## SYNTAX

```
Update-TdChangeActivity [-Id] <string> [-Body] <Object[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/operatorChangeActivities/{identifier}
The list of updates will be applied as one operation. That means if one of the updates fails, none of the steps will be applied.

Also triggers Events and Actions. Note! Actions that require user interaction like "Confirm before sending"
or "Editable before sending" will not be executed.

When *status determines processing status* is enabled the path /processingStatus throws an error when used.

## EXAMPLES

### EXAMPLE 1
```
Update-TdChangeActivity -Id $id -Body $body
```

Updates change activities

## PARAMETERS

### -Id
Id or name of the activity to modify This can be the id or the number.

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

### -Body
The JSON patch operations to apply, as hashtables. For example @{ op = 'replace'; path = '/briefDescription'; value = 'New text' }

```yaml
Type: Object[]
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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
