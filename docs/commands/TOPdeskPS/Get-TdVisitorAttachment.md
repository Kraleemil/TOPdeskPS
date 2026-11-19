---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdVisitorAttachment
schema: 2.0.0
---

# Get-TdVisitorAttachment

## SYNOPSIS
Get files attached to a visitor

## SYNTAX

```
Get-TdVisitorAttachment [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/visitors/{identifier}/attachments
Only available for operators. For SSP Users, use /requester/visitors/{identifier}/attachments instead.

## EXAMPLES

### EXAMPLE 1
```
Get-TdVisitorAttachment -Id $id
```

Get files attached to a visitor

## PARAMETERS

### -Id
The id or number of the visitor

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

[https://developers.topdesk.com/explorer/?page=visitors](https://developers.topdesk.com/explorer/?page=visitors)
