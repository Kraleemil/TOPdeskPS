---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdChangeRequest
schema: 2.0.0
---

# Remove-TdChangeRequest

## SYNOPSIS
delete individual requests

## SYNTAX

```
Remove-TdChangeRequest [-Id] <string> [-RequestId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/operatorChanges/{identifier}/requests/{requestId}
delete individual requests

## EXAMPLES

### EXAMPLE 1
```
Remove-TdChangeRequest -Id $id -RequestId $requestId
```

delete individual requests

## PARAMETERS

### -Id
The UNID (Unique ID) or number of the Change.

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

### -RequestId
The UNID of the request to delete.

```yaml
Type: String
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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
