---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdVisitorIdentificationType
schema: 2.0.0
---

# Get-TdVisitorIdentificationType

## SYNOPSIS
Get identification types

## SYNTAX

```
Get-TdVisitorIdentificationType [[-ResultSize] <int>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/identificationTypes
Get identification types

## EXAMPLES

### EXAMPLE 1
```
Get-TdVisitorIdentificationType
```

Get identification types

## PARAMETERS

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
Position: 1
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
