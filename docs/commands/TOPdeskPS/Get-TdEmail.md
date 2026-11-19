---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdEmail
schema: 2.0.0
---

# Get-TdEmail

## SYNOPSIS
Get details of email by id for incidents, changes and change activites.

## SYNTAX

```
Get-TdEmail [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/emails/id/{id}

## EXAMPLES

### EXAMPLE 1
```
Get-TdEmail -Id $id
```

Get details of email by id for incidents, changes and change activites.

## PARAMETERS

### -Id
The id of the email

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

[https://developers.topdesk.com/explorer/?page=general](https://developers.topdesk.com/explorer/?page=general)
