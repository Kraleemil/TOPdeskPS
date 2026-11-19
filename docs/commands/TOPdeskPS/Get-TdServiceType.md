---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdServiceType
schema: 2.0.0
---

# Get-TdServiceType

## SYNOPSIS
Returns service types

## SYNTAX

```
Get-TdServiceType [[-ResultSize] <int>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/serviceTypes
Returns the list of possible service types

## EXAMPLES

### EXAMPLE 1
```
Get-TdServiceType
```

Returns service types

## PARAMETERS

### -Archived
Whether to show archived entries. Leave out for all, or specify true/false for only archived, or only active entries, respectively.

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 100
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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
