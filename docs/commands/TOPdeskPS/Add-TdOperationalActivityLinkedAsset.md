---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Add-TdOperationalActivityLinkedAsset
schema: 2.0.0
---

# Add-TdOperationalActivityLinkedAsset

## SYNOPSIS
Link assets to an operational activity.

## SYNTAX

```
Add-TdOperationalActivityLinkedAsset [-Id] <string> [-Body] <Object> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/operationalActivities/{identifier}/linkedAssets
Link assets to an operational activity.

## EXAMPLES

### EXAMPLE 1
```
Add-TdOperationalActivityLinkedAsset -Id $id -Body $body
```

Link assets to an operational activity.

## PARAMETERS

### -Id
The id or the name of the operational activity This can be the id or the number.

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

### -Body
The request body. Is converted to JSON.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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

[https://developers.topdesk.com/explorer/?page=operations-management](https://developers.topdesk.com/explorer/?page=operations-management)
