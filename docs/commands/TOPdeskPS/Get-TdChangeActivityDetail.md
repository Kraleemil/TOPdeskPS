---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeActivityDetail
schema: 2.0.0
---

# Get-TdChangeActivityDetail

## SYNOPSIS
Returns details of a change activity

## SYNTAX

```
Get-TdChangeActivityDetail [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operatorChangeActivities/{identifier}
Returns the details of the change activity provided in the path

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeActivityDetail -Id $id
```

Returns details of a change activity

## PARAMETERS

### -Id
UNID (Unique ID) of the activity. This can be the id or the number.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
