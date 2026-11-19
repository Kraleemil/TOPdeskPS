---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPerson
schema: 2.0.0
---

# Get-TdPerson

## SYNOPSIS
Gets persons

## SYNTAX

```
Get-TdPerson [[-FirstName] <string>] [[-Email] <string>] [[-LastName] <string>] [[-NetworkLoginName] <string>] [[-SspLoginName] <string>] [[-MobileNumber] <string>] [[-ResultSize] <int>] [[-Start] <int>] [[-Query] <string>] [[-Fields] <string[]>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
Gets persons from GET /tas/api/persons.

The filter parameters are translated into a FIQL query (the query parameter of the persons endpoint). The response keeps the same shape as before, so existing scripts keep working. You can add your own FIQL with -Query; it is combined with the other filters using AND.

-MobileNumber has no FIQL equivalent ("ends with, ignoring spaces and dashes"). When you use it the command falls back to the old query parameters, and it can then not be combined with -Query or -Fields.

## EXAMPLES

### EXAMPLE 1
```
Get-TdPerson -FirstName 'Bob' -Archived
```

Returns all persons with the firstname starting with Bob. This will also search archived persons.

### EXAMPLE 2
```
Get-TdPerson -Email 'User@company.com' | Format-List *
```

Returns the person whose email starts with 'user@company.com' and displays all details of the result.

### EXAMPLE 3
```
Get-TdPerson -Query 'department.name==IT' -ResultSize ([int]::MaxValue)
```

Returns all persons that are not archived in the IT department.

## PARAMETERS

### -FirstName
Retrieve only persons with first name starting with this

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Email
Retrieve only persons with email starting with this

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

### -LastName
Retrieve only persons with last name starting with this

```yaml
Type: String
Parameter Sets: (All)
Aliases: Surname

Required: False
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkLoginName
Retrieve only users with network login name starting with this. Parameter is ignored for SSP users.

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

### -SspLoginName
Retrieve only persons with Self Service Portal name starting with this. Parameter is ignored for SSP users.

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

### -MobileNumber
Retrieve only persons with mobile number ending with this. Spaces and dashes are ignored. For example: 6-12345678 will match both +316 12345678 and 06 1234 5678

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

### -Archived
Also return archived persons. Without this switch only persons that are not archived are returned.

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
The amount of persons to be returned. Requests greater than 5000 require multiple api calls. Use [int]::MaxValue to return all persons.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
This is the offset at which you want to start listing persons.
The default value is 0.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
A FIQL expression to select persons, for example "department.name==IT;manager.name==Alice". It is combined with the other filters using AND. See https://developers.topdesk.com/tutorial.html#query

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

### -Fields
Only include these fields in the response, for example 'id','dynamicName','email'.

```yaml
Type: String[]
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
