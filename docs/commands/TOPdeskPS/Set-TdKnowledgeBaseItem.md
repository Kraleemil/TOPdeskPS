---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdKnowledgeBaseItem
schema: 2.0.0
---

# Set-TdKnowledgeBaseItem

## SYNOPSIS
Updates properties of the Knowledge Item.

## SYNTAX

```
Set-TdKnowledgeBaseItem [-Id] <string> [[-VisibilitySspVisibility] <string>] [[-VisibilitySspVisibleFrom] <string>] [[-VisibilitySspVisibleUntil] <string>] [[-StatusId] <string>] [[-ManagerId] <string>] [[-ExternalLinkId] <string>] [[-ExternalLinkType] <string>] [[-ExternalLinkDate] <string>] [[-Body] <hashtable>] [-VisibilitySspVisibilityFilteredOnBranches] [-VisibilityOperatorVisibilityFilteredOnBranches] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /services/knowledge-base-v1/knowledgeItems/{identifier}
Updates the Knowledge Item with the given 'identifier'. Using this endpoint, 'visibility','status', 'manager', and 'externalLink' can be updated.Changes that affect the visibility for operators / users in linked branches take up to 5 minutes to become effective.In order for an operator / operator group to be assigned as manager, the "Knowledge Base Manager"task must be selected in the Supporting Files module.It is necessary to have the permission to update Knowledge Items.

To unset 'status', 'manager' or 'externalLink', declare the field as 'null' in the request. For example: '"status": null'

Any field that is not present in the request will not be changed.

⚠️Note: It is not possible to update the properties of an archived knowledge item.

⚠️Note: It is no longer possible to set the parent of a knowledge item through this method. Please use the dedicated /move endpoint for this purpose.

⚠️Note: It is not possible to update any knowledge items that live in the root of the explorer (which means they do not have a parent). Should these knowledge items exist, please use the '/move' endpoint to move them to a folder first.

⚠️Note: It is not possible to change the 'sspVisibilityFilteredOnBranches' and 'operatorVisibilityFilteredOnBranches' without 'read' permission for Branches.

## EXAMPLES

### EXAMPLE 1
```
Set-TdKnowledgeBaseItem -Id $id
```

Updates properties of the Knowledge Item.

## PARAMETERS

### -Id
ID or the number of a Knowledge Item.

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

### -VisibilitySspVisibility
Visible items will be available in Self Service Portal.

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

### -VisibilitySspVisibleFrom
The date and time when the item is first visible in SSP. Should be provided in ISO-8601 format. The return
values are always in UTC. This field is only set or required when 'sspVisibility' is set to VISIBLE_IN_PERIOD.

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

### -VisibilitySspVisibleUntil
The date and time when the item is visible until in SSP. Should be provided in ISO-8601 format. The return
values are always in UTC. This field is only set or required when 'sspVisibility' is set to VISIBLE_IN_PERIOD.

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

### -VisibilitySspVisibilityFilteredOnBranches
Value for visibility.sspVisibilityFilteredOnBranches.

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

### -VisibilityOperatorVisibilityFilteredOnBranches
Value for visibility.operatorVisibilityFilteredOnBranches.

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

### -StatusId
Id of the status.

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

### -ManagerId
Id of the manager.

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

### -ExternalLinkId
The id of the entity in the external system
Size range: 'maximum 450 characters'.

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

### -ExternalLinkType
The type of the link
Range: 'A non-zero integer formatted as string'. Each integration should use its own value. If multiple integrations use the same value, records could be shared between the integrations.

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

### -ExternalLinkDate
The date of the synchronization.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
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
Position: 10
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

[https://developers.topdesk.com/explorer/?page=knowledge-base](https://developers.topdesk.com/explorer/?page=knowledge-base)
