---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdKnowledgeBaseFolder
schema: 2.0.0
---

# Get-TdKnowledgeBaseFolder

## SYNOPSIS
Returns a list of Folders.

## SYNTAX

### Default (Default)
```
Get-TdKnowledgeBaseFolder [-Fields <string[]>] [-Query <string>] [-Language <string>] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Id
```
Get-TdKnowledgeBaseFolder -Id <string> [-Fields <string[]>] [-Language <string>] [<CommonParameters>]
```

## DESCRIPTION
GET /services/knowledge-base-v1/folders (parameter set Default)
Returns a list of Folders, satisfying a given 'query'. When called without any parameters, this endpoint
will return the first 100 Folders, sorted by the Folder number, smallest first. Only the Folders
which have content in the requested language will be listed.
It is necessary to have the permission to read Knowledge Items. If additionally the permission to update Knowledge Items is present, then
branch filters do not apply.

⚠️Note: When a language is specified, this will only affect the fields related to the translation of the folder (e.g. title, description and the translation creator/modifier fields). If none of these fields are added to the request, the language parameter is ignored.

GET /services/knowledge-base-v1/folders/{identifier} (parameter set Id)
Returns the Folder with the given identifier. By default, this endpoint will only return the Folder which has content in the requested language.
It is necessary to have the permission to read Knowledge Items. If additionally the permission to update Knowledge Items is present, then branch filters do not apply.

## EXAMPLES

### EXAMPLE 1
```
Get-TdKnowledgeBaseFolder
```

Returns a list of Folders.

### EXAMPLE 2
```
Get-TdKnowledgeBaseFolder -Id $id
```

Returns the Folder by id or number.

## PARAMETERS

### -Fields
This parameter allows the client to specify which fields of Folders are present in responses. 'ID' and 'number'
fields are always included in Folder. It's possible to request additional fields of Folders, by supplying
a comma separated list of field names in 'fields' parameter.
Note that, unknown or repeating items in the 'fields' parameter will result in an error. Also, a field that does not have a value
is never returned, even if it is explicitly requested using this parameter.
Valid field names for Folders are listed below:
* parent
* visibility
* manager
* externalLink
* language
* ...

```yaml
Type: String[]
Parameter Sets: Default, Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
An FIQL query to filter the response. The fields available for filtering are:
* parent.id
* parent.name
* visibility.sspVisibility
* visibility.sspVisibleFrom
* visibility.sspVisibleUntil
* visibility.sspVisibilityFilteredOnBranches
* visibility.operatorVisibilityFilteredOnBranches
* visibility.publicKnowledgeItem
* visibility.branches.id
* visibility.branches.name
* manager.id
* manager.name
* externalLink.id
* externalLink.type
* externalLink.date
* archived

```yaml
Type: String
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
The language of the Folder content, in standard BCP 47 format. If not specified, defaults to the
TOPdesk default language. If a Folder is not translated to this language, it will not be included
in the results.

```yaml
Type: String
Parameter Sets: Default, Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The offset of the first item to return.

```yaml
Type: Int32
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
ID or the number of a Folder.

```yaml
Type: String
Parameter Sets: Id
Aliases:

Required: True
Position: Named
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

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
