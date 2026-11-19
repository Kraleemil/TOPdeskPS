---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdOperatorArchiveStatus
schema: 2.0.0
---

# Set-TdOperatorArchiveStatus

## SYNOPSIS
Archive an operator

## SYNTAX

### Id_Archive (Default)
```
Set-TdOperatorArchiveStatus -Id <string> -Archive [-ReasonId <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdOperatorArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PUT /tas/api/operators/id/{id}/archive (parameter set Id_Archive)
* _This permission provides more access than required by this API._

PUT /tas/api/operators/id/{id}/unarchive (parameter set Id_Unarchive)
* _This permission provides more access than required by this API._

## EXAMPLES

### EXAMPLE 1
```
Set-TdOperatorArchiveStatus -Id $id -Archive
```

Archive an operator

### EXAMPLE 2
```
Set-TdOperatorArchiveStatus -Id $id -Unarchive
```

Unarchive an operator and its linked person if there is one

## PARAMETERS

### -Id
The operator id

```yaml
Type: String
Parameter Sets: Id_Archive, Id_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ReasonId
Id of the reason.

```yaml
Type: String
Parameter Sets: Id_Archive
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archive an operator

```yaml
Type: SwitchParameter
Parameter Sets: Id_Archive
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchive an operator and its linked person if there is one

```yaml
Type: SwitchParameter
Parameter Sets: Id_Unarchive
Aliases:

Required: True
Position: Named
Default value: False
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
