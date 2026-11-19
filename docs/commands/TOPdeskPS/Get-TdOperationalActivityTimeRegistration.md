---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperationalActivityTimeRegistration
schema: 2.0.0
---

# Get-TdOperationalActivityTimeRegistration

## SYNOPSIS
Retrieves the list of time registrations of an operational activity.

## SYNTAX

```
Get-TdOperationalActivityTimeRegistration [-Id] <string> [[-Fields] <string[]>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operationalActivities/{identifier}/timeRegistrations
Time registrations are sorted by the entry date descending primarily and creation date ascending secondarily.

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperationalActivityTimeRegistration -Id $id
```

Retrieves the list of time registrations of an operational activity.

## PARAMETERS

### -Id
The id of the operational activity This can be the id or the number.

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

### -Fields
The fields or objects to include in the response. All properties of '#/components/schemas/timeRegistration' are available. They are separated by comma. By using 'all' the whole object is returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
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
Position: 3
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
