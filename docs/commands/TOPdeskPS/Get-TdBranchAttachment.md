---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdBranchAttachment
schema: 2.0.0
---

# Get-TdBranchAttachment

## SYNOPSIS
Get the list of attachments of a branch

## SYNTAX

```
Get-TdBranchAttachment [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/branches/id/{id}/attachments

## EXAMPLES

### EXAMPLE 1
```
Get-TdBranchAttachment -Id $id
```

Get the list of attachments of a branch

## PARAMETERS

### -Id
The branch id

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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
