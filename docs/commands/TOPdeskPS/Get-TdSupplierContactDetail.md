---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdSupplierContactDetail
schema: 2.0.0
---

# Get-TdSupplierContactDetail

## SYNOPSIS
Get details of supplier contact by id

## SYNTAX

```
Get-TdSupplierContactDetail [-Id] <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/supplierContacts/{id}

## EXAMPLES

### EXAMPLE 1
```
Get-TdSupplierContactDetail -Id $id
```

Get details of supplier contact by id

## PARAMETERS

### -Id
The supplier contact id

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
