---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeTimeRegistration
schema: 2.0.0
---

# Get-TdChangeTimeRegistration

## SYNOPSIS
Returns the time registration entries of this change.

## SYNTAX

```
Get-TdChangeTimeRegistration [-Id] <string> [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operatorChanges/{identifier}/timeRegistration
Returns the time registration entries for this change. Time registration is only supported for simple changes and needs to be enabled in the settings.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeTimeRegistration -Id $id
```

Returns the time registration entries of this change.

## PARAMETERS

### -Id
The UNID (Unique ID) or number of the Change.

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
