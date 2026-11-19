---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdCatalogService
schema: 2.0.0
---

# New-TdCatalogService

## SYNOPSIS
Create a service

## SYNTAX

```
New-TdCatalogService [[-Name] <string>] [[-DefaultFirstLineOperator] <string>] [[-DefaultSecondLineOperator] <string>] [[-DefaultReservationsOperator] <string>] [[-Manager] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/services
Creates a non-reservable service with the provided name.

## EXAMPLES

### EXAMPLE 1
```
New-TdCatalogService
```

Create a service

## PARAMETERS

### -Name
The name of the service that will be created. Must have between 1 and 100 characters.

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

### -DefaultFirstLineOperator
The default value for the first line operator when using this service

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

### -DefaultSecondLineOperator
The default value for the second line operator when using this service

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

### -DefaultReservationsOperator
The default value for the standard operator when using this service

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

### -Manager
The default value for the operator group when using this service

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
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

[https://developers.topdesk.com/explorer/?page=services](https://developers.topdesk.com/explorer/?page=services)
