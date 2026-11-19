---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterChange
schema: 2.0.0
---

# Get-TdRequesterChange

## SYNOPSIS
Returns a list of changes depending on the permissions of the user or requester of the change.

## SYNTAX

### Default (Default)
```
Get-TdRequesterChange [-IdFilter <string[]>] [-RequesterId <string[]>] [-Open] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Id
```
Get-TdRequesterChange -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requesterChanges (parameter set Default)
Returns a paged list of changes where the currently logged in user is the requester of the change,
or, depending on the user's permission, is from the same branch, department or budget holder as the requester.

Please note that all archived changes are filtered out.

The list is ordered on change creation date descending, i.e. the newest change will be first.

/tas/api/requesterChanges?id=cd98f991-8f4b-44f7-85bd-b366e6ff8768&id=57cbf771-9e75-46e5-bef8-2795982323fd
/tas/api/requesterChanges?requesterId=0f981a44-661a-4971-b189-b5e563e86c89&requesterId=39ac0494-c157-4e10-a4fc-ecc3159cd743

GET /tas/api/requesterChanges/{id} (parameter set Id)
Returns the details of the change by its ID in case the logged in user is the requester of the change, or, depending on the users permission, from the same branch, department or budget holder. This endpoint listen to the "Detail view"-Setting under Module Settings -> Self-Service Portal -> Change Management.

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterChange
```

Returns a list of changes depending on the permissions of the user or requester of the change.

### EXAMPLE 2
```
Get-TdRequesterChange -Id $id
```

Returns the details of the change by its ID in case the logged in user is the requester of the change.

## PARAMETERS

### -IdFilter
Return only changes with the specified ids.
Changes for which the currently logged in user has no permission are silently ignored and not included in the result.

_This is a repeatable filter parameter_

```yaml
Type: String[]
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequesterId
Return only changes requested by the person with the specified id.
Depending on the users permission to also see requested changes from the same branch, department or budget holder,
specifying the requester.id parameter can filter the result to only contain changes from the specified requesters.

_This is a repeatable filter parameter_

```yaml
Type: String[]
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Open
Return only changes that are not completed, rejected or cancelled.
_This is a filter parameter_

```yaml
Type: SwitchParameter
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
The offset of the first item to return.

```yaml
Type: Int32
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
The UNID (Unique ID) of the Change.

```yaml
Type: String
Parameter Sets: Id
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
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
