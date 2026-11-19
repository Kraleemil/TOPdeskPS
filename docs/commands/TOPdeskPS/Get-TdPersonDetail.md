---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPersonDetail
schema: 2.0.0
---

# Get-TdPersonDetail

## SYNOPSIS
Get person by id (v2)

## SYNTAX

```
Get-TdPersonDetail [-Id] <string> [[-Fields] <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/persons/{id}
NOTE: This endpoint version is not backward compatible with the previous version of the persons endpoint. For documentation on the previous endpoint version, please refer to the document version 1.58.0.

## EXAMPLES

### EXAMPLE 1
```
Get-TdPersonDetail -Id $id
```

Get person by id (v2)

## PARAMETERS

### -Id
The person id

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

### -Fields
Only include these specific fields in the response. To include all fields use '*' or 'all'.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
