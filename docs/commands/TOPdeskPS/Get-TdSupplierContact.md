---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdSupplierContact
schema: 2.0.0
---

# Get-TdSupplierContact

## SYNOPSIS
Gets list of supplier  contacts

## SYNTAX

```
Get-TdSupplierContact [[-SupplierId] <Object>] [[-PageSize] <int>] [[-Start] <int>] [[-Name] <string>] [[-Query] <string>] [-Archived] [<CommonParameters>]
```

## DESCRIPTION
Returns list of supplier contacts (GET /tas/api/supplierContacts).

When -SupplierId or -Query is used the request is sent as a FIQL query: -SupplierId becomes supplier.id, -Name becomes dynamicName=sw= and archived contacts are left out unless -Archived is used. Otherwise the old filter parameters are sent.

## EXAMPLES

### EXAMPLE 1
```
Get-TdSuppliercontact
```

Returns list of supplier contacts

### EXAMPLE 2
```
Get-TdSupplier -Name 'Sample Supplier' | Get-TdSupplierContact
```

Returns list of Supplier contracts from supplier 'Sample Supplier'

## PARAMETERS

### -SupplierId
ID of the Supplier. See Get-TdSupplier

```yaml
Type: Object
Parameter Sets: (All)
Aliases: Id

Required: False
Position: 1
Default value:
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PageSize
The amount of supplier contacts to be returned. The default value is 10 and the maximum value is 10000.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Start
This is the offset at which you want to start listing suppliers at.
The default value is 0.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Archived
Whether to retrieve archived supplier contacts.

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

### -Name
retrieve only supplier contacts with names starting with this string

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

### -Query
A FIQL expression to select supplier contacts, for example "supplier.forFirstLine==true". See https://developers.topdesk.com/tutorial.html#query

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
