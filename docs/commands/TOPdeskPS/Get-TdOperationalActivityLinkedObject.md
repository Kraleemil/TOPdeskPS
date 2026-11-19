---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperationalActivityLinkedObject
schema: 2.0.0
---

# Get-TdOperationalActivityLinkedObject

## SYNOPSIS
Retrieves the list of linked objects of an operational activity.

## SYNTAX

```
Get-TdOperationalActivityLinkedObject [-Id] <string> [[-Fields] <string[]>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operationalActivities/{identifier}/linkedObjects
This endpoint only returns configuration management objects.

To access linked assets please use either:

the details endpoint (operationalActivits/{identifier})
and specify the accept-header as: application/x.topdesk-om-activity-v1+json

or:

the list endpoint (/operationalActivities)
with the accept-header: application/x.topdesk-collection-om-activity-v1+json

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperationalActivityLinkedObject -Id $id
```

Retrieves the list of linked objects of an operational activity.

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
The fields or objects to include in the response. All properties of '#/components/schemas/linkWithProperties' are available. They are separated by comma. By using 'all' the whole object is returned.

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
