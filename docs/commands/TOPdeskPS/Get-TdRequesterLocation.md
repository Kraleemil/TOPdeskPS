---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterLocation
schema: 2.0.0
---

# Get-TdRequesterLocation

## SYNOPSIS
Get list of locations for SSP user

## SYNTAX

```
Get-TdRequesterLocation [[-Query] <string>] [[-Fields] <string[]>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/locations

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterLocation
```

Get list of locations for SSP user

## PARAMETERS

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the tutorial.

The fields available for filtering are:

- id
- name
- roomNumber
- branch.id,branch.name
- archived
When query parameter is used both archived and non-archived locations are returned by default. If query parameter is not used only active locations are returned by default

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

### -Fields
Only include these specific fields in the response.

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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
