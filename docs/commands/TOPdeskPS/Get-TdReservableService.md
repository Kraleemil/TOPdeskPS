---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdReservableService
schema: 2.0.0
---

# Get-TdReservableService

## SYNOPSIS
Returns a list of reservable services

## SYNTAX

### Default (Default)
```
Get-TdReservableService [-Fields <string[]>] [-LocationId <string[]>] [-ObjectId <string[]>] [-AssetId <string[]>] [-ServiceTypeId <string[]>] [-ExternalLinkId <string[]>] [-ExternalLinkType <string[]>] [-SeparatelyReservable] [-ReservableInSsp] [-Archived] [-Inlineimages] [-ResultSize <int>] [<CommonParameters>]
```

### Id
```
Get-TdReservableService -Id <string> [-Fields <string[]>] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/reservableServices (parameter set Default)
Returns a list of reservable services

GET /tas/api/reservableServices/{id} (parameter set Id)
Returns a reservable service

## EXAMPLES

### EXAMPLE 1
```
Get-TdReservableService
```

Returns a list of reservable services

### EXAMPLE 2
```
Get-TdReservableService -Id $id
```

Returns a reservable service

## PARAMETERS

### -Fields
Only include these specific fields in the response. Fields of sub-entities are separated with a dot

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

### -LocationId
The UUID of the reservable location. Only services for any specified location will be returned. Multiple values may be specified by providing the parameter multiple times.

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

### -ObjectId
The UUID of the reservable object. Only services for any specified object will be returned. Multiple values may be specified by providing the parameter multiple times.

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

### -AssetId
The UUID of the reservable asset. Only services for any specified asset will be returned. Multiple values may be specified by providing the parameter multiple times.

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

### -ServiceTypeId
The UUID of the service type. Only services with the specified type will be returned. Multiple values may be specified by providing the parameter multiple times.

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

### -ExternalLinkId
The external link id. Should be used in combination with externalLinkType. Multiple values may be specified by providing the parameter multiple times.

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

### -ExternalLinkType
The external link type. Multiple values may be specified by providing the parameter multiple times.

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

### -SeparatelyReservable
Whether to show separately reservable services. Leave out for all, or specify true/false for only separately reservable, or only facilitiy-linked services, respectively.

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

### -ReservableInSsp
Whether to show services available in the Self-Service Portal. Leave out for all, or specify true/false for only SSP reservable, or not SSP reservable, respectively.

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

### -Archived
Whether to show archived services. Leave out for all, or specify true/false for only archived, or only active services, respectively.

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

### -Inlineimages
Whether or not to include inline images in the memo fields (description and termsOfSupply)

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

### -Id
The id of the item.

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

[https://developers.topdesk.com/explorer/?page=reservations](https://developers.topdesk.com/explorer/?page=reservations)
