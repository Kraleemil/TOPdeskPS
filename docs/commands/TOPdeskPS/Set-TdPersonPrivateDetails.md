---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Set-TdPersonPrivateDetails
schema: 2.0.0
---

# Set-TdPersonPrivateDetails

## SYNOPSIS
Update a person's private details

## SYNTAX

```
Set-TdPersonPrivateDetails [-Id] <string> [[-AddressCountryId] <string>] [[-AddressStreet] <string>] [[-AddressNumber] <string>] [[-AddressCounty] <string>] [[-AddressCity] <string>] [[-AddressPostcode] <string>] [[-AddressAddressMemo] <string>] [[-IdentificationSocialSecurityNumber] <string>] [[-IdentificationIdTypeId] <string>] [[-IdentificationIdNumber] <string>] [[-IdentificationIssueDate] <string>] [[-IdentificationExpiryDate] <string>] [[-IdentificationIssuePlace] <string>] [[-IdentificationIssueCountryId] <string>] [[-IdentificationBankAccount] <string>] [[-PrivateContactDetailsPhoneNumber1] <string>] [[-PrivateContactDetailsPhoneNumber2] <string>] [[-PrivateContactDetailsMobileNumber] <string>] [[-PrivateContactDetailsFax] <string>] [[-PrivateContactDetailsEmail] <string>] [[-BirthDetailsDateOfBirth] <string>] [[-BirthDetailsPlaceOfBirth] <string>] [[-BirthDetailsCountryOfOriginId] <string>] [[-BirthDetailsNationalityId] <string>] [[-EmergencyContactName] <string>] [[-EmergencyContactRelation] <string>] [[-EmergencyContactTelephoneNumber] <string>] [[-Body] <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
PATCH /tas/api/persons/{id}/privateDetails
NOTE: This endpoint version is not backward compatible with the previous version of the privateDetails endpoint. For documentation on the previous endpoint version, please refer to the document version 1.58.0.

## EXAMPLES

### EXAMPLE 1
```
Set-TdPersonPrivateDetails -Id $id
```

Update a person's private details

## PARAMETERS

### -Id
The id of the person for which the private details should be updated.

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

### -AddressCountryId
Id of address.country.

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

### -AddressStreet
Street
Size range: 'maximum 50 characters'

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

### -AddressNumber
Number
Size range: 'maximum 50 characters'

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

### -AddressCounty
County
Size range: 'maximum 50 characters'

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

### -AddressCity
City
Size range: 'maximum 30 characters'

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

### -AddressPostcode
Postcode
Size range: 'maximum 15 characters'

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

### -AddressAddressMemo
Address Memo

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

### -IdentificationSocialSecurityNumber
Social security number, maximum '60' characters

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

### -IdentificationIdTypeId
Id of identification.idType.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentificationIdNumber
ID number, maximum '50' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentificationIssueDate
ID issue date

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentificationExpiryDate
ID expiry date

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentificationIssuePlace
ID issue place, maximum '30' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentificationIssueCountryId
Id of identification.issueCountry.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentificationBankAccount
Bank account number, maximum '34' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateContactDetailsPhoneNumber1
Private phone number 1, maximum '25' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateContactDetailsPhoneNumber2
Private phone number 2, maximum '25' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateContactDetailsMobileNumber
Private mobile phone number, maximum '25' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateContactDetailsFax
Private fax number, maximum '25' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateContactDetailsEmail
Private email address, maximum '100' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BirthDetailsDateOfBirth
Value for birthDetails.dateOfBirth.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BirthDetailsPlaceOfBirth
Place of birth, maximum '30' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 23
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BirthDetailsCountryOfOriginId
Id of birthDetails.countryOfOrigin.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 24
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -BirthDetailsNationalityId
Id of birthDetails.nationality.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 25
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmergencyContactName
Emergency contact name, maximum '100' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 26
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmergencyContactRelation
Emergency contact relation, maximum '50' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 27
Default value:
Accept pipeline input: False
Accept wildcard characters: False
```

### -EmergencyContactTelephoneNumber
Emergency contact telephone number, maximum '25' characters

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 28
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
Position: 29
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

[https://developers.topdesk.com/explorer/?page=supporting-files](https://developers.topdesk.com/explorer/?page=supporting-files)
