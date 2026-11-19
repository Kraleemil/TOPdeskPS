---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdApplicableActivityTemplate
schema: 2.0.0
---

# Get-TdApplicableActivityTemplate

## SYNOPSIS
Lists all activity templates that can be used to create new activities.

## SYNTAX

```
Get-TdApplicableActivityTemplate [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/applicableActivityTemplates
Archived activity templates are not listed. Templates are ordered by creation date, newest first.
Normal activity templates are only listed if the current operator has permission for creating normal activities.
Authorization activity templates are only listed if the current operator has permission for creating authorization
activities and the authorization functionality is enabled.

## EXAMPLES

### EXAMPLE 1
```
Get-TdApplicableActivityTemplate
```

Lists all activity templates that can be used to create new activities.

## PARAMETERS

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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
