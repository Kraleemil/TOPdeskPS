---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdOperationalActivityTimeRegistration
schema: 2.0.0
---

# New-TdOperationalActivityTimeRegistration

## SYNOPSIS
Register time for operational activity

## SYNTAX

```
New-TdOperationalActivityTimeRegistration [-Id] <string> [[-TimeSpent] <long>] [[-Note] <string>] [[-EntryDate] <string>] [[-ReasonId] <string>] [[-OperatorId] <string>] [[-OperatorGroupId] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operationalActivities/{identifier}/timeRegistrations
Register time for operational activity

## EXAMPLES

### EXAMPLE 1
```
New-TdOperationalActivityTimeRegistration -Id $id
```

Register time for operational activity

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

### -TimeSpent
The unit of the time registration is minutes.

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
Note for the time registration.

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
Entry date of the time registration. Conforms to ISO-8601.

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

### -ReasonId
Id of the reason.

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

### -OperatorId
Id of the operator.

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

### -OperatorGroupId
Id of the operatorGroup.

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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
