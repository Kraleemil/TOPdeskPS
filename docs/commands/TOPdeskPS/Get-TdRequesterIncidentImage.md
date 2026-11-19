---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterIncidentImage
schema: 2.0.0
---

# Get-TdRequesterIncidentImage

## SYNOPSIS
Retrieve an image from an incident identified by id for a SSP user.

## SYNTAX

### Id_FileName (Default)
```
Get-TdRequesterIncidentImage -Id <string> -FileName <string> -OutFile <string> [<CommonParameters>]
```

### Id
```
Get-TdRequesterIncidentImage -Id <string> [<CommonParameters>]
```

### Number_FileName
```
Get-TdRequesterIncidentImage -FileName <string> -OutFile <string> -Number <string> [<CommonParameters>]
```

### Number
```
Get-TdRequesterIncidentImage -Number <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/incidents/id/{id}/images/{fileName} (parameter set Id_FileName)

GET /tas/api/requester/incidents/number/{number}/images/{fileName} (parameter set Number_FileName)

GET /tas/api/requester/incidents/id/{id}/images (parameter set Id)

GET /tas/api/requester/incidents/number/{number}/images (parameter set Number)

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterIncidentImage -Id $id -FileName $fileName -OutFile '.\download.bin'
```

Retrieve an image from an incident identified by id for a SSP user.

### EXAMPLE 2
```
Get-TdRequesterIncidentImage -Number 'I2401-001' -FileName $fileName -OutFile '.\download.bin'
```

Retrieve an image from an incident identified by incident number for a SSP user.

### EXAMPLE 3
```
Get-TdRequesterIncidentImage -Id $id
```

Get a list of images for an incident identified by id for a SSP user.

## PARAMETERS

### -Id
The incident id

```yaml
Type: String
Parameter Sets: Id, Id_FileName
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -FileName
The name of the requested file

```yaml
Type: String
Parameter Sets: Id_FileName, Number_FileName
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutFile
Path of the file to save the downloaded content to.

```yaml
Type: String
Parameter Sets: Id_FileName, Number_FileName
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Number
The incident number

```yaml
Type: String
Parameter Sets: Number, Number_FileName
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
