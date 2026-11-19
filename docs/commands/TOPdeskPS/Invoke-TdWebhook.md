---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Invoke-TdWebhook
schema: 2.0.0
---

# Invoke-TdWebhook

## SYNOPSIS
Triggers a webhook action via a customizable URL

## SYNTAX

```
Invoke-TdWebhook [-UrlPathSegment] <string> [-Body] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/action-v1/api/webhooks/{urlPathSegment}
This operation triggers a webhook action configured in Action Management. The URL to trigger the webhook is partially customizable via a URL path segment defined by the operator when creating the action.

When a POST request is made to this URL, the action will be retrieved and executed using the information contained in the headers and in the request body.

Requires the permission "Webhooks and Scheduled Actions: Trigger".

Values from the request body and headers can be used in the action. Use the header 'Content-Type: application/json' if the request body is in the JSON format or 'Content-Type: application/xml' if the request body is in the XML format. For other values of the Content-Type header, the request body (if present) will be interpreted as text with the UTF-8 encoding.

## EXAMPLES

### EXAMPLE 1
```
Invoke-TdWebhook -UrlPathSegment $urlPathSegment -Body $body
```

Triggers a webhook action via a customizable URL

## PARAMETERS

### -UrlPathSegment
The customizable URL path segment to use in order to trigger the webhook action.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
The request body. Is converted to JSON. The request body must be valid JSON. It is possible to use values from the JSON request body (or the whole request body) in the action configuration.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
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

[https://developers.topdesk.com/explorer/?page=custom-action-support](https://developers.topdesk.com/explorer/?page=custom-action-support)
