---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperationalActivityStatus
schema: 2.0.0
---

# Get-TdOperationalActivityStatus

## SYNOPSIS
Lists non-archived statuses for activites.

## SYNTAX

```
Get-TdOperationalActivityStatus [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operationalActivities/statuses
This endpoint returns non-archived statuses for operational activities.

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperationalActivityStatus
```

Lists non-archived statuses for activites.

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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
