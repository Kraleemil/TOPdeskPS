---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperator
schema: 2.0.0
---

# Get-TdOperator

## SYNOPSIS
returns list of operators

## SYNTAX

```
Get-TdOperator [[-TOPdeskLoginName] <string>] [-ResultSize <int>] [-Start <int>] [-Email <string>] [-Archived] [-LastName <string>] [-FirstName <string>] [-Query <string>] [-Fields <string[]>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of operators (GET /tas/api/operators).

The filter parameters are translated into a FIQL query. You can add your own FIQL with -Query; it is combined with the other filters using AND.

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperator
```

returns list of operators

### EXAMPLE 2
```
Get-TdOperator -Query 'operatorGroup.name==Servicedesk' -ResultSize ([int]::MaxValue)
```

Returns all operators that are not archived and are member of the operator group Servicedesk.

## PARAMETERS

### -TOPdeskLoginName
Retrieve only operators with TOPdesk login name starting with this.

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

### -ResultSize
The amount of operators to be returned. Requests greater than 5000 require multiple api calls. Use [int]::MaxValue to return all operators.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
This is the offset at which you want to start listing operators.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Email
Retrieve only operators with email starting with this.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archived
Also return archived operators. Without this switch only operators that are not archived are returned.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastName
Retrieve only operators with last name starting with this.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -FirstName
Retrieve only operators with first name starting with this.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
A FIQL expression to select operators, for example "(stockManager==true,operatorGroup.stockManager==true)". See https://developers.topdesk.com/tutorial.html#query

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fields
Only include these fields in the response, for example 'id','dynamicName','email'.

```yaml
Type: String[]
Parameter Sets: (All)
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
