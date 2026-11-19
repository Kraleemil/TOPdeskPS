---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterIncidentAction
schema: 2.0.0
---

# Get-TdRequesterIncidentAction

## SYNOPSIS
Get incident actions by incident number for SSP users.

## SYNTAX

### Number (Default)
```
Get-TdRequesterIncidentAction -Number <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Number_Actionid
```
Get-TdRequesterIncidentAction -Number <string> -Actionid <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [<CommonParameters>]
```

### Id_Actionid
```
Get-TdRequesterIncidentAction -Id <string> -Actionid <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [<CommonParameters>]
```

### Id
```
Get-TdRequesterIncidentAction -Id <string> [-Inlineimages] [-ForceImagesAsData] [-NonApiAttachmentUrls] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/incidents/number/{number}/actions (parameter set Number)

GET /tas/api/requester/incidents/id/{id}/actions (parameter set Id)

GET /tas/api/requester/incidents/id/{incidentid}/actions/{actionid} (parameter set Id_Actionid)

GET /tas/api/requester/incidents/number/{incidentnumber}/actions/{actionid} (parameter set Number_Actionid)

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterIncidentAction -Number 'I2401-001'
```

Get incident actions by incident number for SSP users.

### EXAMPLE 2
```
Get-TdRequesterIncidentAction -Id $id
```

Get incident actions by incident id for SSP users.

### EXAMPLE 3
```
Get-TdRequesterIncidentAction -Id $id -Actionid $actionid
```

Get incident actions by incident id and action id for SSP users.

## PARAMETERS

### -Number
incident number

```yaml
Type: String
Parameter Sets: Number, Number_Actionid
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
Parameter Sets: Id, Id_Actionid, Number, Number_Actionid
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
Parameter Sets: Id, Id_Actionid, Number, Number_Actionid
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
Parameter Sets: Id, Id_Actionid, Number, Number_Actionid
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
Parameter Sets: Id, Id_Actionid
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Actionid
action id

```yaml
Type: String
Parameter Sets: Id_Actionid, Number_Actionid
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
