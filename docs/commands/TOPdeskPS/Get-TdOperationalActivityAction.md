---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperationalActivityAction
schema: 2.0.0
---

# Get-TdOperationalActivityAction

## SYNOPSIS
Retrieves the list of actions of an operational activity.

## SYNTAX

```
Get-TdOperationalActivityAction [-Id] <string> [[-Fields] <string[]>] [[-ResultSize] <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operationalActivities/{identifier}/actions
Actions are sorted by entry date descending.

Handling of inline images depends on its size. Only small and medium size images can be inlined, and the API returns them this way:
- small image: their contents are embedded in the memotext in image source tags (\) as base64 encoded string, by indicating the image type
- medium size image: thumbnail image contents are embedded in the memotext in image source tags (\) as base64 encoded string, and a link reference (\) to the OM API url of the full size image is provided

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperationalActivityAction -Id $id
```

Retrieves the list of actions of an operational activity.

## PARAMETERS

### -Id
The id of the operational activity This can be the id or the number.

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

### -Fields
The fields or objects to include in the response. All properties of '#/components/schemas/memoHistory' are available. They are separated by comma. By using 'all' the whole object is returned.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value:
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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
