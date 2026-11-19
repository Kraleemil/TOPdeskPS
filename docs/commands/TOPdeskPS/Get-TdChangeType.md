---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeType
schema: 2.0.0
---

# Get-TdChangeType

## SYNOPSIS
List all types for changes

## SYNTAX

```
Get-TdChangeType [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/changes/types
This endpoint returns the 'type' search list for changes: the values of a change's 'type' field
('type.id' / 'type.name'), and whether a given type is archived and/or the default value.

This is unrelated to the 'changeType' enum ('simple' / 'extensive'), which distinguishes simple changes
from extensive changes.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeType
```

List all types for changes

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
