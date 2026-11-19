---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeImpact
schema: 2.0.0
---

# Get-TdChangeImpact

## SYNOPSIS
List all impacts for changes

## SYNTAX

```
Get-TdChangeImpact [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/changes/impacts
This endpoint returns all impacts for changes, and whether a given impact is archived and/or the default value.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeImpact
```

List all impacts for changes

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
