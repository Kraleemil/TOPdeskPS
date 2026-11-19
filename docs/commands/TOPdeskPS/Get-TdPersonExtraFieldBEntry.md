---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPersonExtraFieldBEntry
schema: 2.0.0
---

# Get-TdPersonExtraFieldBEntry

## SYNOPSIS
Get the list of non-archived person extra field B entries

## SYNTAX

```
Get-TdPersonExtraFieldBEntry [[-ExternalLinkId] <string[]>] [[-ExternalLinkType] <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/personExtraFieldBEntries

## EXAMPLES

### EXAMPLE 1
```
Get-TdPersonExtraFieldBEntry
```

Get the list of non-archived person extra field B entries

## PARAMETERS

### -ExternalLinkId
Retrieve only person extra field B entries with external link id equal to one of these values. Should be used in combination with 'external_link_type'

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalLinkType
Retrieve only person extra field B entries with external link type equal to one of these values. Should be used in combination with 'external_link_id'

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
