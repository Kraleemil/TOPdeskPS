---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdDepartment
schema: 2.0.0
---

# Set-TdDepartment

## SYNOPSIS
Updates the name-value of a department

## SYNTAX

```
Set-TdDepartment [-Id] <string> [[-Name] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/departments/id/{id}

## EXAMPLES

### EXAMPLE 1
```
Set-TdDepartment -Id $id
```

Updates the name-value of a department

## PARAMETERS

### -Id
The department id

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

### -Name
The new name of the drop-down list entry
* must be unique (case-insensitive)
* may not be empty or blank
* maximum 100 characters

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
