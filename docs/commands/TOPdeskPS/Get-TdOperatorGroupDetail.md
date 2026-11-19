---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperatorGroupDetail
schema: 2.0.0
---

# Get-TdOperatorGroupDetail

## SYNOPSIS
Get operator group by id

## SYNTAX

```
Get-TdOperatorGroupDetail [-Id] <string> [[-Fields] <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operatorgroups/id/{id}

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperatorGroupDetail -Id $id
```

Get operator group by id

## PARAMETERS

### -Id
The operator group id

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
