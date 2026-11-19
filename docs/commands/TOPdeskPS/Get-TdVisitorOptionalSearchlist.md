---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdVisitorOptionalSearchlist
schema: 2.0.0
---

# Get-TdVisitorOptionalSearchlist

## SYNOPSIS
Get optional searchlists

## SYNTAX

```
Get-TdVisitorOptionalSearchlist [-Tab] <string> [-Searchlist] <string> [[-ResultSize] <int>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/visitorOptionalSearchlist/{tab}/{searchlist}
Get optional searchlists

## EXAMPLES

### EXAMPLE 1
```
Get-TdVisitorOptionalSearchlist -Tab $tab -Searchlist $searchlist
```

Get optional searchlists

## PARAMETERS

### -Tab
tab index, 1 or 2

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

### -Searchlist
searchlist index on this tab, from 1 to 5

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

### -Archived
Specify true for archived only, false for unarchived only, or nothing for both

```yaml
Type: SwitchParameter
Parameter Sets: (All)
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
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 100
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

[https://developers.topdesk.com/explorer/?page=visitors](https://developers.topdesk.com/explorer/?page=visitors)
