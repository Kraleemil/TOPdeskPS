---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdProcessingStatus
schema: 2.0.0
---

# Get-TdProcessingStatus

## SYNOPSIS
Gets processing statuses

## SYNTAX

```
Get-TdProcessingStatus [[-Name] <string>] [<CommonParameters>]
```

## DESCRIPTION
Gets the list of incident processing statuses (GET /tas/api/incidents/statuses).
The endpoint /tas/api/incidents/processing_status that older versions of this command used is no longer part of the TOPdesk Incident API.

## EXAMPLES

### EXAMPLE 1
```
Get-TdProcessingStatus
```

Gets list of all processing statuses

## PARAMETERS

### -Name
Name of the processing status that you want returned. Wildcards are supported. Default value is '*'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: *
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
