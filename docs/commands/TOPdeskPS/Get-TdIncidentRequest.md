---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdIncidentRequest
schema: 2.0.0
---

# Get-TdIncidentRequest

## SYNOPSIS
Get incident requests by incident number

## SYNTAX

### Number (Default)
```
Get-TdIncidentRequest -Number <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Number_Requestid
```
Get-TdIncidentRequest -Number <string> -Requestid <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [<CommonParameters>]
```

### Id_Requestid
```
Get-TdIncidentRequest -Id <string> -Requestid <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [<CommonParameters>]
```

### Id
```
Get-TdIncidentRequest -Id <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/incidents/number/{number}/requests (parameter set Number)

GET /tas/api/incidents/id/{id}/requests (parameter set Id)

GET /tas/api/incidents/id/{incidentid}/requests/{requestid} (parameter set Id_Requestid)

GET /tas/api/incidents/number/{incidentnumber}/requests/{requestid} (parameter set Number_Requestid)

## EXAMPLES

### EXAMPLE 1
```
Get-TdIncidentRequest -Number 'I2401-001'
```

Get incident requests by incident number

### EXAMPLE 2
```
Get-TdIncidentRequest -Id $id
```

Get incident requests by incident id

### EXAMPLE 3
```
Get-TdIncidentRequest -Id $id -Requestid $requestid
```

Get incident request by incident id and request id

## PARAMETERS

### -Number
incident number

```yaml
Type: String
Parameter Sets: Number, Number_Requestid
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
Parameter Sets: Id, Id_Requestid, Number, Number_Requestid
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
Parameter Sets: Id, Id_Requestid, Number, Number_Requestid
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -NonApiAttachmentUrls
Whether links to bigger versions of inline images should be returned in a format that can be used by a browser (with cookie authentication) instead of by an API user

```yaml
Type: SwitchParameter
Parameter Sets: Id, Id_Requestid, Number, Number_Requestid
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

### -Id
incident id

```yaml
Type: String
Parameter Sets: Id, Id_Requestid
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Requestid
request id

```yaml
Type: String
Parameter Sets: Id_Requestid, Number_Requestid
Aliases:

Required: True
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

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
