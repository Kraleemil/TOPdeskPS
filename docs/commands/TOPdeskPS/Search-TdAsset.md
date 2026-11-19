---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Search-TdAsset
schema: 2.0.0
---

# Search-TdAsset

## SYNOPSIS
Returns assets which meet the given criteria. Identical with 'GET /assets' but can handle a longer parameter list.

## SYNTAX

```
Search-TdAsset [-Body] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/assetmgmt/assets/filter
The functionality of this endpoint is identical with that of the 'GET /assets' endpoint, except that query parameters are expected to be provided as properties in the request body. This solution makes it possible to construct longer parameter lists and thus more complex filtering, which would not work with 'GET /assets' due to the limited length of URLs.

The request body is a JSON object where each property represents a parameter which would be a query parameter otherwise. When there are multiple query parameters with the same name, they can be represented by a JSON-array value.

Example:

{
"templateId": [
"5f8f1285-c4de-4d3f-b7b5-31063509fa24",
"608a1fa9-91e0-423a-9c0b-ad32fe6961e9"
],
"$filter": "somefield eq 'somevalue'"
}

For possible parameters and responses check the documentation of the 'GET /assets' endpoint.

## EXAMPLES

### EXAMPLE 1
```
Search-TdAsset -Body $body
```

Returns assets which meet the given criteria. Identical with 'GET /assets' but can handle a longer parameter list.

## PARAMETERS

### -Body
The request body. Is converted to JSON.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
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

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
