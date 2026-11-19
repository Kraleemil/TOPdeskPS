---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetCardType
schema: 2.0.0
---

# Get-TdAssetCardType

## SYNOPSIS
Returns a list of all asset templates.

## SYNTAX

```
Get-TdAssetCardType [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/assetmgmt/cardTypes
Returns a list of all active asset templates. Information about each template includes:

- The name and ID of the template
- Details of the fields that are present on the template
- The API operations available for the template

## EXAMPLES

### EXAMPLE 1
```
Get-TdAssetCardType
```

Returns a list of all asset templates.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
