---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeBenefit
schema: 2.0.0
---

# Get-TdChangeBenefit

## SYNOPSIS
List all benefits for changes

## SYNTAX

```
Get-TdChangeBenefit [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/changes/benefits
This endpoint returns all benefits for changes, and whether a given benefit is archived and/or the default value.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeBenefit
```

List all benefits for changes

## PARAMETERS

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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
