---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdCatalogService
schema: 2.0.0
---

# Get-TdCatalogService

## SYNOPSIS
Get a list of services, optionally filtered by linked object or published state

## SYNTAX

### Default (Default)
```
Get-TdCatalogService [-ObjectId <string>] [-AssetId <string>] [-Published] [-Language <string>] [-ResultSize <int>] [<CommonParameters>]
```

### Id
```
Get-TdCatalogService -Id <string> [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/services (parameter set Default)
Returns a list of services, sorted alphabetically by name. The list can optionally be filtered to only retrieve services linked to a specific object, or only (un)published services. Archived services are not included.

GET /tas/api/services/{id} (parameter set Id)
Returns the service with the provided id.

## EXAMPLES

### EXAMPLE 1
```
Get-TdCatalogService
```

Get a list of services, optionally filtered by linked object or published state

### EXAMPLE 2
```
Get-TdCatalogService -Id $id
```

Get a service by id

## PARAMETERS

### -ObjectId
The id of an object to filter on. If present, only services linked to this object are returned. Only one object can be filtered on at the same time. It is not allowed to use both objectId and assetId in the same query. Example value: 8e4efa62-2980-446e-9734-4f8d47e5de9b

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

### -AssetId
The assetId of an object to filter on. If present, only services linked to this object are returned. Only one object can be filtered on at the same time. It is not allowed to use both objectId and assetId in the same query. Example value: ed0e8000-a990-4c6c-8966-8b5af68bb6b7

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

### -Published
If present, only services that are published in the Self-Service Portal (true) or only services that are not published (false) are returned. If absent, services are returned regardless of their published state.

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

### -Language
The language in which to return the name and brief description of the services, as a language tag. Example values: nl, en-GB. If a service is translated in this language, that translation is returned. Otherwise the translation in the default content language is returned, and if that does not exist either, the untranslated name and brief description of the service. If absent, the untranslated name and brief description are returned.

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

[https://developers.topdesk.com/explorer/?page=services](https://developers.topdesk.com/explorer/?page=services)
