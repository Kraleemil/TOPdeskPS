---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdLookAndFeelProfileLogo
schema: 2.0.0
---

# Get-TdLookAndFeelProfileLogo

## SYNOPSIS
Returns the logo for the look and feel of the logged in user.

## SYNTAX

```
Get-TdLookAndFeelProfileLogo [-OutFile] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/myLookAndFeelProfile/logo
This API returns the logo, as a binary image (e.g. PNG or JPEG), for the look and feel that the logged in user would see in the SSP.

## EXAMPLES

### EXAMPLE 1
```
Get-TdLookAndFeelProfileLogo -OutFile '.\download.bin'
```

Returns the logo for the look and feel of the logged in user.

## PARAMETERS

### -OutFile
Path of the file to save the downloaded content to.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=lookandfeel](https://developers.topdesk.com/explorer/?page=lookandfeel)
