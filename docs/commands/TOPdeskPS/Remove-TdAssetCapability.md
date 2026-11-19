---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Remove-TdAssetCapability
schema: 2.0.0
---

# Remove-TdAssetCapability

## SYNOPSIS
Deletes a link type.

## SYNTAX

```
Remove-TdAssetCapability [-CapabilityId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
DELETE /tas/api/assetmgmt/capabilities/{capabilityId}
Deletes a link type.

## EXAMPLES

### EXAMPLE 1
```
Remove-TdAssetCapability -CapabilityId $capabilityId
```

Deletes a link type.

## PARAMETERS

### -CapabilityId
Id of the link type

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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

[https://developers.topdesk.com/explorer/?page=assets](https://developers.topdesk.com/explorer/?page=assets)
