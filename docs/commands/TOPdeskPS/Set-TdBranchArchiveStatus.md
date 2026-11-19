---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdBranchArchiveStatus
schema: 2.0.0
---

# Set-TdBranchArchiveStatus

## SYNOPSIS
Archive a branch

## SYNTAX

### Id_Archive (Default)
```
Set-TdBranchArchiveStatus -Id <string> -Archive [-ReasonId <string>] [-ReasonName <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Id_Unarchive
```
Set-TdBranchArchiveStatus -Id <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/branches/id/{id}/archive (parameter set Id_Archive)

PATCH /tas/api/branches/id/{id}/unarchive (parameter set Id_Unarchive)

## EXAMPLES

### EXAMPLE 1
```
Set-TdBranchArchiveStatus -Id $id -Archive
```

Archive a branch

### EXAMPLE 2
```
Set-TdBranchArchiveStatus -Id $id -Unarchive
```

Unarchive a branch

## PARAMETERS

### -Id
The branch id

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

### -ReasonName
Name of the reason, as an alternative to -ReasonId.

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
Selects this operation: Archive a branch

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
Selects this operation: Unarchive a branch

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
