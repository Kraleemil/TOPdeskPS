---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/New-TdManagerAuthorizableChangeProgressTrail
schema: 2.0.0
---

# New-TdManagerAuthorizableChangeProgressTrail

## SYNOPSIS
Creates a new action for this change.

## SYNTAX

```
New-TdManagerAuthorizableChangeProgressTrail [-Id] <string> [[-MemoText] <string>] [[-TextFormatting] <string>] [[-Type] <string>] [[-Body] <hashtable>] [-InvisibleForCaller] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/managerAuthorizableChanges/{id}/progresstrail
By default the text is treated as plain text without any formatting. But by setting the 'textFormatting' to 'html'
some html tags can be used for formatting.
All whitespace characters will be trimmed at the start and end of the text.
The created action is returned by the endpoint.

## EXAMPLES

### EXAMPLE 1
```
New-TdManagerAuthorizableChangeProgressTrail -Id $id
```

Creates a new action for this change.

## PARAMETERS

### -Id
The UNID (Unique ID) of the Change.

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

### -MemoText
The text of this progress trail entry, if it is of type 'memo'.
May not contain only whitespace characters (Spaces, New Lines, Tabs) and may not be empty.
When the 'textFormatting' is set to 'html', the following html tags can be used to format the text:

- <i>

- <em>

- <b>

- <strong>

- <u>

- <img> BASE64-encoding has to be used. Only pictures up to the size of 450x600 pixels are supported. Allowed picture-formats: gif, png, bmp, pcx, iff, ras, pnm, psd, jpg. Example: <img src="data:image/png;base64,iVBORw0KGgoAAA...">

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

### -TextFormatting
Tells the api if the text is supposed to be interpreted as html or plain text.

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

### -Type
The type of this progress trail entry.

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

### -InvisibleForCaller
Whether this progress trail entry is invisible for callers. Can only be set by operators.

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

### -Body
Additional properties for the request body, for example nested objects that have no parameter of their own. Values of the other parameters take precedence.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
