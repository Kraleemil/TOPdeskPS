---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdChangeActivityOptionalFieldSearchlist
schema: 2.0.0
---

# Get-TdChangeActivityOptionalFieldSearchlist

## SYNOPSIS
Lists the possible values for the specified optional searchlist.

## SYNTAX

```
Get-TdChangeActivityOptionalFieldSearchlist [-TabNumber] <string> [-SearchlistName] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operatorChangeActivities/optionalFields/{tabNumber}/{searchlistName}
Lists the possible values for the specified optional searchlist.

## EXAMPLES

### EXAMPLE 1
```
Get-TdChangeActivityOptionalFieldSearchlist -TabNumber $tabNumber -SearchlistName $searchlistName
```

Lists the possible values for the specified optional searchlist.

## PARAMETERS

### -TabNumber
The the tab where the optional searchlist can be found. Must be 1 or 2.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchlistName
The name of the searchlist you want to get the values for. Possible values:
- searchlist1
- searchlist2
- searchlist3
- searchlist4
- searchlist5

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
