---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/ConvertTo-TdPdf
schema: 2.0.0
---

# ConvertTo-TdPdf

## SYNOPSIS
Converts HTML to PDF

## SYNTAX

```
ConvertTo-TdPdf [[-Html] <string>] [[-Format] <string>] [[-Width] <string>] [[-Height] <string>] [[-MarginTop] <string>] [[-MarginBottom] <string>] [[-MarginLeft] <string>] [[-MarginRight] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /services/pdf-generator-v1/convert/html
This operation converts HTML to a PDF file.

## EXAMPLES

### EXAMPLE 1
```
ConvertTo-TdPdf
```

Converts HTML to PDF

## PARAMETERS

### -Html
The HTML content of the generated PDF

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

### -Format
The page size of the generated PDF. Overrides width and height if present.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Width
The width of pages in the generated PDF. Allowed units are px, cm, mm, in. If no unit is provided, the width is assumed to be in pixels.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Height
The height of pages in the generated PDF. Allowed units are px, cm, mm, in. If no unit is provided, the height is assumed to be in pixels.

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

### -MarginTop
The size of the top margin of pages in the generated PDF. Allowed units are px, cm, mm, in. If no unit is provided, the size is assumed to be in pixels. Top and bottom margins combined have to be smaller than page height.

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

### -MarginBottom
The size of the bottom margin of pages in the generated PDF. Allowed units are px, cm, mm, in. If no unit is provided, the size is assumed to be in pixels. Top and bottom margins combined have to be smaller than page height.

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

### -MarginLeft
The size of the left margin of pages in the generated PDF. Allowed units are px, cm, mm, in. If no unit is provided, the size is assumed to be in pixels. Left and right margins combined have to be smaller than page width.

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

### -MarginRight
The size of the right margin of pages in the generated PDF. Allowed units are px, cm, mm, in. If no unit is provided, the size is assumed to be in pixels. Left and right margins combined have to be smaller than page width.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
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
Position: 9
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
