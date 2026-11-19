---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdQrCode
schema: 2.0.0
---

# New-TdQrCode

## SYNOPSIS
Generates a barcode

## SYNTAX

```
New-TdQrCode [[-MetadataFormat] <string>] [[-MetadataWidth] <int>] [[-MetadataHeight] <int>] [[-MetadataImageType] <string>] [[-ContentText] <string>] [[-ContentHeader] <string>] [[-ContentFooter] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /solutions/multi-barcode-creator-1/qr
This operation creates a Barcode (multiple formats supported) image based on a given input.

## EXAMPLES

### EXAMPLE 1
```
New-TdQrCode
```

Generates a barcode

## PARAMETERS

### -MetadataFormat
Format for the barcode

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetadataWidth
Width in pixels for the resulting image

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetadataHeight
Height in pixels for the resulting image

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetadataImageType
Image type to be returned

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentText
Text to convert into the Barcode

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentHeader
Text set above the barcode

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentFooter
Text set below the barcode

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
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
