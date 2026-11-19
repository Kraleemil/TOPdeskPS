---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdVisitor
schema: 2.0.0
---

# Get-TdVisitor

## SYNOPSIS
Get visitors

## SYNTAX

### Default (Default)
```
Get-TdVisitor [-Query <string>] [-Fields <string[]>] [-Order <string>] [-ResultSize <int>] [-Start <int>] [<CommonParameters>]
```

### Id
```
Get-TdVisitor -Id <string> [-Fields <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/visitors (parameter set Default)
Fields with a 'null' or otherwise empty value will not be included in the response at all, even if they are included in the 'fields' parameter. Only allowed for operators, for SSP users use /requester/visitors instead.

GET /tas/api/visitors/{identifier} (parameter set Id)
Fields with a 'null' or otherwise empty value will not be included in the response at all, even if they are included in the 'fields' parameter. Only available for operators. For SSP Users, use /requester/visitors/{identifier} instead.

## EXAMPLES

### EXAMPLE 1
```
Get-TdVisitor
```

Get visitors

### EXAMPLE 2
```
Get-TdVisitor -Id $id
```

Get visitor by id or number

## PARAMETERS

### -Query
A FIQL search expression to filter the result. The FIQL query syntax is documented in the tutorial.

The fields available for filtering are:

- All top-level fields in the returned dto, and the visitor, visit and host sub-dtos. Additionally, you can filter by archived, which is a boolean, and by arrivalStatus, which can be either 'expected', 'arrived', 'departed' or 'cancelled'.
- For visitor.phoneNumber, host.phoneNumber and host.mobileNumber, a special =phone= operator is available. This operator ignores dashes and spaces in both the query and the database, and performs an 'ends with' check.

```yaml
Type: String
Parameter Sets: Default
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Fields
The fields to include in the returned object(s). Sub-objects can be included as a whole ('visitor') or per sub-field ('visitor.name'). All fields defined in the GET single endpoint can be added here, and are relative to the 'results' property. One additional property 'total' can be included, which will add a field to the parent object (next to 'results') with the total count of visitors after applying any relevant filters. If you want the arrivalStatus displayed, you can add 'visit.arrivalStatus' in the fields. In that case, the whole visit object will be returned.

```yaml
Type: String[]
Parameter Sets: Default, Id
Aliases:

Required: False
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
The order in which to return in the object(s). Supports all field types except id and arrivalStatus.

```yaml
Type: String
Parameter Sets: Default
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
The id or number of the visitor

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

[https://developers.topdesk.com/explorer/?page=visitors](https://developers.topdesk.com/explorer/?page=visitors)
