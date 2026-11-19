---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterCategory
schema: 2.0.0
---

# Get-TdRequesterCategory

## SYNOPSIS
Lists categories and subcategories for SSP user

## SYNTAX

```
Get-TdRequesterCategory [[-Fields] <string[]>] [[-Query] <string>] [[-Sort] <string>] [[-ResultSize] <int>] [-Pretty] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requester/categories
Notes:
- For now all categories and subcategories are returned and there is no support for paging. But we might want
to limit this to 1000 per page at a later time. So if you have exceptionally many categories, check the next
property if it contains a link to a next page.
- The translations are only returned if explicitely requested by fields=translations or fields=all. All other
fields are returned by default when no fields parameter is used.

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterCategory
```

Lists categories and subcategories for SSP user

## PARAMETERS

### -Fields
A comma-separated list of which fields should be returned. By default all fields will be returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
A FIQL string to select which categories should be returned. (See Tutorial (https://developers.topdesk.com/tutorial.html#query))

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
The sort order of the returned categories.
To specify if the order should be ascending or descending, append ":asc" or ":desc" to the field name.
Multiple columns can be specified by comma-joining the orderings.
Example: sort=parent.name:asc,name:desc.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Pretty
If set to true the response will be pretty printed to be better human readable.

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
Position: 4
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

[https://developers.topdesk.com/explorer/?page=general](https://developers.topdesk.com/explorer/?page=general)
