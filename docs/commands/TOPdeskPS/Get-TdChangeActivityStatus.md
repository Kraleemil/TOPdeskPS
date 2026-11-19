---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeActivityStatus
schema: 2.0.0
---

# Get-TdChangeActivityStatus

## SYNOPSIS
Lists all statuses for activities

## SYNTAX

```
Get-TdChangeActivityStatus [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/changes/activityStatuses
This endpoint returns all the statuses for activities and their meaning for normal and authorization activities.
The values in defaultFor indicate if and for which types this status is the default value. If the status is not the default for any type an empty list will be returned.
Possible values for defaultFor are activity and authorization activity.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeActivityStatus
```

Lists all statuses for activities

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
