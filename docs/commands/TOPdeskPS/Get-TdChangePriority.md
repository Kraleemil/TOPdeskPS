---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangePriority
schema: 2.0.0
---

# Get-TdChangePriority

## SYNOPSIS
List all priorities for changes

## SYNTAX

```
Get-TdChangePriority [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/changes/priorities
This endpoint returns all priorities for changes, and whether a given priority is archived and/or the default value.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangePriority
```

List all priorities for changes

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
