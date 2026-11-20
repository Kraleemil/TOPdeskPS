---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/Get-TdAsset
schema: 2.0.0
---

# Get-TdAsset

## SYNOPSIS
Returns TOPdesk assets

## SYNTAX

### List (Default)
```
Get-TdAsset [-Field <string[]>] [<CommonParameters>]
```

### Standard Query
```
Get-TdAsset [-NameFragment <string>] [-Archived] [-ShowAssignments] [-TemplateName <string>] [-LinkedTo <string>] [-Field <string[]>] [<CommonParameters>]
```

### Template Query
```
Get-TdAsset -TemplateId <Object> [-Archived] [-Field <string[]>] [<CommonParameters>]
```

## DESCRIPTION
Returns assets. The command works in three ways:
- Without parameters it calls /assetmgmt/import/assets and returns all non-archived assets (id and name).
- With -NameFragment, -TemplateName, -LinkedTo, -ShowAssignments or -Archived it calls /assetmgmt/assets. That returns at most 50 assets with id, name, etag and state; use the filters to narrow the list.
- With -TemplateId it calls /assetmgmt/assets/templateId/{templateId} and returns all assets of that template, with the fields given in -Field.

## EXAMPLES

### EXAMPLE 1
```
Get-TdAsset
```

Get all topdesk assets

### EXAMPLE 2
```
Get-TdAsset -LinkedTo "person/$personId"
```

Returns the assets linked to the person.

## PARAMETERS

### -NameFragment
To filter assets by their name-fragment use this parameter. It’s case-insensitive.

```yaml
Type: String
Parameter Sets: Standard Query
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archived
Use -Archived to return only archived assets and -Archived:$false to return only active assets. Leave it out to return both.

```yaml
Type: SwitchParameter
Parameter Sets: Standard Query, Template Query
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowAssignments
When it’s given it returns more meta information, including all person and location related assignments. See ‘/assignments’ endpoint documentation for more details about the response format.

```yaml
Type: SwitchParameter
Parameter Sets: Standard Query
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateName
To filter assets by a specific template’s name (case sensitive).

```yaml
Type: String
Parameter Sets: Standard Query
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -LinkedTo
Only return assets linked to this entity: its type and id separated by a slash, for example 'person/<person id>' or 'incident/<incident id>'. Types: person, personGroup, branch, location and the external link types (incident, change, ...).

```yaml
Type: String
Parameter Sets: Standard Query
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateId
Id of the template specifying the type of assets to return. see Get-Tdtemplate to retrieve the id.

```yaml
Type: Object
Parameter Sets: Template Query
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Field
Which asset fields to include in the response. If not specified, only the id and name will be included. Fields should be referenced by their field id, not their display name. See Get-tdAssetField

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: name
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
