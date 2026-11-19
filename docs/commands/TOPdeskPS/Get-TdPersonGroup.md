---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPersonGroup
schema: 2.0.0
---

# Get-TdPersonGroup

## SYNOPSIS
returns list of person groups

## SYNTAX

```
Get-TdPersonGroup [[-NameFragment] <string>] [-ResultSize <int>] [-Archived] [-Start <int>] [-Query <string>] [<CommonParameters>]
```

## DESCRIPTION
Returns a list of person groups (GET /tas/api/persongroups, version 1 of the endpoint so the output keeps its shape).

Without -Query the old filter parameters are sent. With -Query the request is a FIQL query; -Archived is then translated to FIQL and -NameFragment cannot be used.

## EXAMPLES

### EXAMPLE 1
```
Get-TdPersonGroup -ResultSize 500 -Archived
```

returns up to 500 person groups. Includes archived groups

## PARAMETERS

### -NameFragment
Retrieve only person groups with name starting with this. No wildcards

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
Specify whether you want archived person groups included

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
The offset at which to start listing the operator groups at. This parameter is likely not used since Resultsize takes of this for you.

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
A FIQL expression to select person groups, for example "branch.name==Delft". See https://developers.topdesk.com/tutorial.html#query

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
