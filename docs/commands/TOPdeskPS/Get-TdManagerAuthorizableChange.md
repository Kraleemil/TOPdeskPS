---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdManagerAuthorizableChange
schema: 2.0.0
---

# Get-TdManagerAuthorizableChange

## SYNOPSIS
Returns the details of a change by its ID in case the logged in user is the manager of the change.

## SYNTAX

```
Get-TdManagerAuthorizableChange [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/managerAuthorizableChanges/{id}
It can be the manager of the current phase or one of the previous phases. This endpoint listen to the "Detail view"-Setting under Module Settings -> Self-Service Portal -> Change Management.

## EXAMPLES

### EXAMPLE 1
```
Get-TdManagerAuthorizableChange -Id $id
```

Returns the details of a change by its ID in case the logged in user is the manager of the change.

## PARAMETERS

### -Id
The UNID (Unique ID) of the Change.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
