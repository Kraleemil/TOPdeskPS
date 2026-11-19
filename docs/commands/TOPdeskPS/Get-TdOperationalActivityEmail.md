---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperationalActivityEmail
schema: 2.0.0
---

# Get-TdOperationalActivityEmail

## SYNOPSIS
Retrieves the list of emails of an operational activity.

## SYNTAX

### Id (Default)
```
Get-TdOperationalActivityEmail -Id <string> [-Fields <string[]>] [-ResultSize <int>] [<CommonParameters>]
```

### Id_EmailId
```
Get-TdOperationalActivityEmail -Id <string> -EmailId <string> [-Fields <string[]>] [-ResultSize <int>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/operationalActivities/{identifier}/emails (parameter set Id)
Emails are sorted by send date descending. Archived emails are not returned.

GET /tas/api/operationalActivities/{identifier}/emails/{emailId} (parameter set Id_EmailId)
Archived emails are also returned by this endpoint.

## EXAMPLES

### EXAMPLE 1
```
Get-TdOperationalActivityEmail -Id $id
```

Retrieves the list of emails of an operational activity.

### EXAMPLE 2
```
Get-TdOperationalActivityEmail -Id $id -EmailId $emailId
```

Retrieves an email of an operational activity by id.

## PARAMETERS

### -Id
The id of the operational activity This can be the id or the number.

```yaml
Type: String
Parameter Sets: Id, Id_EmailId
Aliases:

Required: True
Position: Named
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Fields
The fields or objects to include in the response. All properties of '#/components/schemas/emailInList' are available. They are separated by comma. By using 'all' the whole object is returned.

```yaml
Type: String[]
Parameter Sets: Id, Id_EmailId
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResultSize
The amount of items to return. Use [int]::MaxValue to return everything.

```yaml
Type: Int32
Parameter Sets: Id, Id_EmailId
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmailId
The id of the email

```yaml
Type: String
Parameter Sets: Id_EmailId
Aliases:

Required: True
Position: Named
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
