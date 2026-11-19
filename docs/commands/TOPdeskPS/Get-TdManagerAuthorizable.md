---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdManagerAuthorizable
schema: 2.0.0
---

# Get-TdManagerAuthorizable

## SYNOPSIS
Returns a list of changes or authorization activities for which the currently logged in user is the manager.

## SYNTAX

```
Get-TdManagerAuthorizable [[-ManagerAction] <string[]>] [[-Sort] <string>] [[-ResultSize] <int>] [-IncludeCount] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/managerAuthorizables
Please note that all archived authorization activities and changes are filtered out.

## EXAMPLES

### EXAMPLE 1
```
Get-TdManagerAuthorizable
```

Returns a list of changes or authorization activities for which the currently logged in user is the manager.

## PARAMETERS

### -ManagerAction
The latest action performed by the manager or 'waiting' if the manager is supposed to authorize the
current state. _This is a repeatable filter._

/tas/api/managerAuthorizables?managerAction=waiting&managerAction=submit

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort
A parameter to sort the results by. It is currently possible to sort on:
* latestParticipation.date
* modificationDate

You can specify the direction by providing _asc_ or _desc_ separated by a colon ':' . The default is desc.
The default is currently to sort by latestParticipation.date:desc

Note: 'pageSize' can only be used in combination with 'sort=modificationDate'.

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

### -IncludeCount
When set to 'true', the response includes a 'totalCount' field with the total number of authorizables
matching the filters, regardless of paging.

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

[https://developers.topdesk.com/explorer/?page=change](https://developers.topdesk.com/explorer/?page=change)
