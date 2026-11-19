---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterPersonCount
schema: 2.0.0
---

# Get-TdRequesterPersonCount

## SYNOPSIS
Get total number of persons for SSP user. Only counts persons that are marked as callers (requesters) and are active (not archived).

## SYNTAX

```
Get-TdRequesterPersonCount [[-Query] <string>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/persons/count

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterPersonCount
```

Get total number of persons for SSP user. Only counts persons that are marked as callers (requesters) and are active (not archived).

## PARAMETERS

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the
tutorial.
Additionally, this version supports the =gt=, =ge=, =lt=, and =le= operators for text.
All enabled fields are supported.

Archived persons are never returned.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
