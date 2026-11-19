---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperatorDetail
schema: 2.0.0
---

# Get-TdOperatorDetail

## SYNOPSIS
Get operator by id

## SYNTAX

```
Get-TdOperatorDetail [-Id] <string> [[-Fields] <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operators/id/{id}
* _This permission provides more access than required by this API._

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperatorDetail -Id $id
```

Get operator by id

## PARAMETERS

### -Id
The operator id

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
Only include these specific fields in the response. The default is that all fields are included.

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
