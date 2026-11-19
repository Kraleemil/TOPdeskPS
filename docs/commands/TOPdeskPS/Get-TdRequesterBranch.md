---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterBranch
schema: 2.0.0
---

# Get-TdRequesterBranch

## SYNOPSIS
Get list of branches for SSP user

## SYNTAX

```
Get-TdRequesterBranch [[-Query] <string>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/branches

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterBranch
```

Get list of branches for SSP user

## PARAMETERS

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the tutorial.

The fields available for filtering are:

- id
- name
- archived

When query parameter is used both archived and non-archived branches are returned by default. If query parameter is not used only active branches are returned.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
