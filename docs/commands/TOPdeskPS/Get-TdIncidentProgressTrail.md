---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncidentProgressTrail
schema: 2.0.0
---

# Get-TdIncidentProgressTrail

## SYNOPSIS
Get incident progress trail by incident id

## SYNTAX

### Id (Default)
```
Get-TdIncidentProgressTrail -Id <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Number
```
Get-TdIncidentProgressTrail -Number <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/incidents/id/{id}/progresstrail (parameter set Id)

GET /tas/api/incidents/number/{number}/progresstrail (parameter set Number)

## EXAMPLES

### EXAMPLE 1
```
Get-TdIncidentProgressTrail -Id $id
```

Get incident progress trail by incident id

### EXAMPLE 2
```
Get-TdIncidentProgressTrail -Number 'I2401-001'
```

Get incident progress trail by incident number

## PARAMETERS

### -Id
incident id

```yaml
Type: String
Parameter Sets: Id
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Inlineimages
Whether inline images should be returned

```yaml
Type: SwitchParameter
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ForceImagesAsData
Whether imageData should be forced to be returned as Base64 inline images instead of a URL. Only taken into account when inlineimages is true.

```yaml
Type: SwitchParameter
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NonApiAttachmentUrls
Whether links to attachments and bigger versions of inline images should be returned in a format that can be used by a browser (with cookie authentication) instead of by an API user

```yaml
Type: SwitchParameter
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The offset of the first item to return.

```yaml
Type: Int32
Parameter Sets: Id, Number
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number
incident number

```yaml
Type: String
Parameter Sets: Number
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
