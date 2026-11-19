---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeActivityTimeRegistration
schema: 2.0.0
---

# Get-TdChangeActivityTimeRegistration

## SYNOPSIS
Returns the time registration entries of this change activity.

## SYNTAX

```
Get-TdChangeActivityTimeRegistration [-Id] <string> [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operatorChangeActivities/{identifier}/timeRegistration
Returns the time registration entries for this change activity. Time registration needs to be enabled in the settings.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeActivityTimeRegistration -Id $id
```

Returns the time registration entries of this change activity.

## PARAMETERS

### -Id
The UNID (Unique ID) or number of the Change Activity.

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

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
