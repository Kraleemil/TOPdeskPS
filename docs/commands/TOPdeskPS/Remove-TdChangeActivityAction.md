---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdChangeActivityAction
schema: 2.0.0
---

# Remove-TdChangeActivityAction

## SYNOPSIS
Delete an action from this change activity.

## SYNTAX

```
Remove-TdChangeActivityAction [-Id] <string> [-ActionId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/operatorChangeActivities/{identifier}/actions/{actionId}
Delete an action from this change activity.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdChangeActivityAction -Id $id -ActionId $actionId
```

Delete an action from this change activity.

## PARAMETERS

### -Id
The UNID (Unique ID) or number of the Change Activity.

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

### -ActionId
The UNID of the action to delete

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
