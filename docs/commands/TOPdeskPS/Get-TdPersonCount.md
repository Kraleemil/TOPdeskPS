---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPersonCount
schema: 2.0.0
---

# Get-TdPersonCount

## SYNOPSIS
Get total number of persons

## SYNTAX

```
Get-TdPersonCount [[-Query] <string>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/persons/count

## EXAMPLES

### EXAMPLE 1
```
Get-TdPersonCount
```

Get total number of persons

## PARAMETERS

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the tutorial.

The fields available for filtering are:

- All top-level fields in the returned object, except for status. Use archived==true or archived==false instead.
- language.id, language.name, language.code
- department.id, department.name
- budgetHolder.id, budgetHolder.name
- branch.id, branch.name
- location.id, location.name
- manager.id, manager.name
- attention.id, attention.name
- personExtraFieldA.id, personExtraFieldA.name
- personExtraFieldB.id, personExtraFieldB.name
- creator.id, creator.name
- modifier.id, modifier.name
- optionalFields1, optionalFields2: All subfields, including id and name for searchlists
- externalLink.id, externalLink.type, externalLink.date
For example, if you ...

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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
