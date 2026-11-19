---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdLookAndFeelProfile
schema: 2.0.0
---

# Get-TdLookAndFeelProfile

## SYNOPSIS
Returns the look and feel of the logged in user.

## SYNTAX

```
Get-TdLookAndFeelProfile [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/myLookAndFeelProfile
This API returns the look and feel that the logged in user would see in the SSP. The response includes colour, tile size, search and welcome texts and links to the logo and search banner. If you are using a browser to access the API, the Accept-Language header (used to determine translations for the search and welcome texts) will be sent automatically, based on your browser language. If you call the API using another technology, you will need to explicitly include this header.

## EXAMPLES

### EXAMPLE 1
```
Get-TdLookAndFeelProfile
```

Returns the look and feel of the logged in user.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=lookandfeel](https://developers.topdesk.com/explorer/?page=lookandfeel)
