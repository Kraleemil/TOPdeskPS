---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Save-TdKnowledgeBaseItemImage
schema: 2.0.0
---

# Save-TdKnowledgeBaseItemImage

## SYNOPSIS
Downloads an image from the Knowledge Item.

## SYNTAX

```
Save-TdKnowledgeBaseItemImage [-Id] <string> [-ImageName] <string> [-OutFile] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/knowledgeItems/{identifier}/images/{imageName}/download
Downloads an image with a given name from the Knowledge item with the given identifier. It is necessary to have the permission to read Knowledge Items. If additionally the permission to update Knowledge Items is present, then branch filters will not apply.

## EXAMPLES

### EXAMPLE 1
```
Save-TdKnowledgeBaseItemImage -Id $id -ImageName $imageName -OutFile '.\download.bin'
```

Downloads an image from the Knowledge Item.

## PARAMETERS

### -Id
ID or the number of a Knowledge Item.

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

### -ImageName
Name of the image

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutFile
Path of the file to save the downloaded content to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
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

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
