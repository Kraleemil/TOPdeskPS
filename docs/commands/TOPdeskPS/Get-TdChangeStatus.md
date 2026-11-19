---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeStatus
schema: 2.0.0
---

# Get-TdChangeStatus

## SYNOPSIS
Lists all statuses for changes.

## SYNTAX

```
Get-TdChangeStatus [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/changes/changeStatuses
This endpoint returns all the statuses for changes and their meaning for the different phases.
The values in defaultFor indicate if and for which phases this status is the default value. If the status is not the default for any phase an empty list will be returned.
Possible values for defaultFor are prfc, rfc, simple, extensive progress and extensive evaluation.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeStatus
```

Lists all statuses for changes.

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
