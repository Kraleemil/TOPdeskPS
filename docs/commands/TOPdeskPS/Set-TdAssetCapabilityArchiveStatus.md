---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdAssetCapabilityArchiveStatus
schema: 2.0.0
---

# Set-TdAssetCapabilityArchiveStatus

## SYNOPSIS
Archives a link type.

## SYNTAX

### CapabilityId_Archive (Default)
```
Set-TdAssetCapabilityArchiveStatus -CapabilityId <string> -Archive [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CapabilityId_Unarchive
```
Set-TdAssetCapabilityArchiveStatus -CapabilityId <string> -Unarchive [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
POST /tas/api/assetmgmt/capabilities/{capabilityId}/archive (parameter set CapabilityId_Archive)
Archives the link type identified by the provided ID (capabilityId).

POST /tas/api/assetmgmt/capabilities/{capabilityId}/unarchive (parameter set CapabilityId_Unarchive)
Unarchives a link type.

## EXAMPLES

### EXAMPLE 1
```
Set-TdAssetCapabilityArchiveStatus -CapabilityId $capabilityId -Archive
```

Archives a link type.

### EXAMPLE 2
```
Set-TdAssetCapabilityArchiveStatus -CapabilityId $capabilityId -Unarchive
```

Unarchives a link type.

## PARAMETERS

### -CapabilityId
Id of the link type

```yaml
Type: String
Parameter Sets: CapabilityId_Archive, CapabilityId_Unarchive
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archive
Selects this operation: Archives a link type.

```yaml
Type: SwitchParameter
Parameter Sets: CapabilityId_Archive
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unarchive
Selects this operation: Unarchives a link type.

```yaml
Type: SwitchParameter
Parameter Sets: CapabilityId_Unarchive
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

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
