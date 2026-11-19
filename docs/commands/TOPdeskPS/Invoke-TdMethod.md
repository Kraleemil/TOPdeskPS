---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Invoke-TdMethod
schema: 2.0.0
---

# Invoke-TdMethod

## SYNOPSIS
Sends a request to the TOPdesk API. This command is exposed in case you encounter api calls that aren't part of this module. All api commands call this command to perform the web request.

## SYNTAX

```
Invoke-TdMethod [-Uri] <uri> [-ContentType <string>] [-Body <psobject>] [-Method <string>] [-Token <string>] [-Accept <string>] [-OutFile <string>] [-File <FileInfo>] [<CommonParameters>]
```

## DESCRIPTION
Sends a request to the TOPdesk API with the authorization header created by Connect-TdService and returns the response as objects.

Text is always sent and read as UTF-8, so characters like æ, ø, å, ü and é work on Windows PowerShell 5.1 as well as PowerShell 7:
- A string body is sent as UTF-8 bytes and the content type gets charset=utf-8.
- Responses are decoded with the charset TOPdesk sends, or UTF-8 when it sends none.
- File uploads are sent as multipart/form-data with UTF-8 field values and file names.

## EXAMPLES

### EXAMPLE 1
```
Invoke-TdMethod -Token $Token -Body $Body
```

Sends a Get request to your TOPdesk instance.

## PARAMETERS

### -Uri
the uri that you are targeting

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentType
The content type of the body. Default is application/json; charset=utf-8 is added for text bodies. Together with -File it is the content type of the uploaded file (detected from the extension when not given).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: application/json
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
The body of the request to be sent to TOPdesk. Accepts a PSCustomObject. If you also specify a file we will convert the body into a multipart/form request.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Method
The method that you want to pass

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Get
Accept pipeline input: False
Accept wildcard characters: False
```

### -Token
Custom Api token if you want to avoid using Connect-TdService ex:'TOKEN id="Token id="Base64encodedToken

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Accept
Value for the Accept header. Some TOPdesk endpoints need a versioned media type, for example application/x.topdesk-collection-person-v2+json. When not specified no Accept header is sent.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutFile
Saves the response body to this file instead of returning it. Used for downloading attachments, images and avatars.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -File
Path to the file that you want to upload. The request is sent as multipart/form-data with the file in the field "file"; the properties of -Body are added as extra form fields.

```yaml
Type: FileInfo
Parameter Sets: File
Aliases: InFile

Required: False
Position: Named
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
