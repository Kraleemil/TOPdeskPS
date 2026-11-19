---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdChangeActivityTimeRegistration
schema: 2.0.0
---

# New-TdChangeActivityTimeRegistration

## SYNOPSIS
Adds a time registration entry to this change activity.

## SYNTAX

```
New-TdChangeActivityTimeRegistration [-Id] <string> [[-TimeSpent] <long>] [[-Note] <string>] [[-EntryDate] <string>] [[-Operator] <string>] [[-OperatorGroup] <string>] [[-Reason] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operatorChangeActivities/{identifier}/timeRegistration
Adds a time registration entry to this change activity. Time registration needs to be enabled in the settings.
If the change activity is archived or not ready to start yet time cannot be registered.

If 'entryDate' is not provided, the current date and time is used. If 'operator' is not provided, the currently logged in operator is used.
Registering time for another operator requires the 'Time registration for other operators' permission.

Depending on the settings, 'reason' either is mandatory or not allowed at all, and 'note' can be mandatory.

## EXAMPLES

### EXAMPLE 1
```
New-TdChangeActivityTimeRegistration -Id $id
```

Adds a time registration entry to this change activity.

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

### -TimeSpent
The amount of time spent, in minutes. Must be a non-zero value, and may not make the total registered time on the change negative.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Note
Depending on the settings, this field can be mandatory.

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

### -EntryDate
Defaults to the current date and time when not provided.

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

### -Operator
The operator to register the time for. Accepts UUID or name. Defaults to the currently logged in operator when not provided. Registering time for another operator requires the 'Time registration for other operators' permission.

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

### -OperatorGroup
UUID or name of the operatorGroup

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Reason
Depending on the settings, this field can be mandatory or not allowed at all. Accepts UUID or name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
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
Position: 8
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
