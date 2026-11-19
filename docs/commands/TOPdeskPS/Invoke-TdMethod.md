---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Invoke-TdMethod
schema: 2.0.0
---

# Invoke-TdMethod

## SYNOPSIS
Wrapper for Invoke-RestMethod. This command is exposed in case you encounter api calls that aren't part of this module. All api commands call this command to perform the web request.

## SYNTAX

```
Invoke-TdMethod [-Uri] <uri> [-ContentType <string>] [-Body <psobject>] [-Method <string>] [-Token <string>] [-Accept <string>] [-OutFile <string>] [-File <FileInfo>] [<CommonParameters>]
```

## DESCRIPTION
A detailed description of the Invoke-TdMethod function.

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
default for contenttype is application/json . You may need to use a different contenttype for uploading files.

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
path to the file that you want to upload. If you specify a body then we will construct a multipart/form request.
In Windows PowerShell this functionality isn't built in.
If no body is specified then we will just use the -infile parameter of Invoke-RestMethod

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
