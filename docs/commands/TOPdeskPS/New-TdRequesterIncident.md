---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdRequesterIncident
schema: 2.0.0
---

# New-TdRequesterIncident

## SYNOPSIS
Creates an Incident for a SSP user.

## SYNTAX

```
New-TdRequesterIncident [[-BriefDescription] <string>] [[-Request] <string>] [[-CallTypeId] <string>] [[-CategoryId] <string>] [[-SubcategoryId] <string>] [[-ObjectId] <string>] [[-LocationId] <string>] [[-OperatorGroupId] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/requester/incidents

## EXAMPLES

### EXAMPLE 1
```
New-TdRequesterIncident
```

Creates an Incident for a SSP user.

## PARAMETERS

### -BriefDescription
Brief description.
Can be set by persons only when the appropriate setting for the new call form is checked.

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

### -Request
Initial request.
The following html tags can be used to format the text:

- <i>

- <em>

- <b>

- <strong>

- <u>

- <img> BASE64-encoding has to be used. Only pictures up to the size of 450x450 pixels are supported. Allowed picture-formats: gif, png, bmp, pcx, iff, ras, pnm, psd, jpg. Example: <img src="data:image/png;base64,iVBORw0KGgoAAA...">

- <br>

- <h5>

- <h6>

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

### -CallTypeId
Id of the callType. Call type by id or name.
Can be set by persons only when the appropriate setting for the new call form is checked.
Example:

"callType" : { "id" : "" }

or

"callType" : { "name" : "Name of Searchlist" }

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

### -CategoryId
Id of the category. Category by id or name.
Can be set by persons only when the appropriate setting for the new call form is checked.
It is an error to provide both an id and a name.
Example:

"category" : { "id" : "" }

or

"category" : { "name" : "Name of Searchlist" }

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubcategoryId
Id of the subcategory. Subcategory by id or name.
Can be set by persons only when the appropriate setting for the new call form is checked.
It is an error to provide both an id and a name. If a subcategory is provided without a category, the corresponding category will be filled in automatically, unless there are multiple matching categories, in which case the request will fail.
Examples:

"subcategory" : { "id" : "" }

or

"subcategory" : { "name" : "Printer" }

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId
Id of the object. Object by id or by name.
Can be set by persons only when the appropriate setting for the new call form is checked.
Examples:

"object" : { "id" : "" }

or

"object" : { "name" : "OBJ001" }

If both object and location are given, object is set and location is ignored.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocationId
Id of the location. Location by id.
Can be set by persons only when the appropriate setting for the new call form is checked.
Example:

"location" : { "id" : "" }

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperatorGroupId
Id of the operatorGroup. Operator group by id.
Can be set by persons only when the appropriate setting for the new call form is checked.
Example:

"operatorGroup" : { "id" : "" }

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
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

[https://developers.topdesk.com/explorer/?page=incident](https://developers.topdesk.com/explorer/?page=incident)
