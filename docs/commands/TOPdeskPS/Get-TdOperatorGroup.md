---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperatorGroup
schema: 2.0.0
---

# Get-TdOperatorGroup

## SYNOPSIS
Returns operator groups

## SYNTAX

### List (Default)
```
Get-TdOperatorGroup [[-NameFragment] <string>] [-ResultSize <int>] [-Archived] [-Start <int>] [-Query <string>] [-Fields <string[]>] [<CommonParameters>]
```

### Operator
```
Get-TdOperatorGroup [-OperatorId <Object>] [<CommonParameters>]
```

## DESCRIPTION
returns list of operator groups or groups for a provided operator.

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperatorGroup -resultsize 1000
```

returns up to 1000 operator groups.

### EXAMPLE 2
```
Get-TdOperator | Get-TdOperatorGroup
```

Returns operator groups for operators

## PARAMETERS

### -NameFragment
Retrieve only operator groups with name starting with this. No wildcards

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperatorId
Id of the operator that you want to return operator groups for.

```yaml
Type: Object
Parameter Sets: Operator
Aliases: id

Required: False
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResultSize
The number of results that you want returned.

```yaml
Type: Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archived
Specify whether you want archived operator groups included

```yaml
Type: SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The offset at which to start listing the operator groups at. Must be greater or equal to 0, default is 0

```yaml
Type: Int32
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
A FIQL expression to select operator groups, for example "stockManager==true". It is combined with the other filters using AND. See https://developers.topdesk.com/tutorial.html#query

```yaml
Type: String
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fields
Only include these fields in the response, for example 'id','groupName'.

```yaml
Type: String[]
Parameter Sets: List
Aliases:

Required: False
Position: Named
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
