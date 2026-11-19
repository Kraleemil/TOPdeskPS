---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdRequesterChangeRequest
schema: 2.0.0
---

# Get-TdRequesterChangeRequest

## SYNOPSIS
Lists the requests for this change.

## SYNTAX

```
Get-TdRequesterChangeRequest [-Id] <string> [[-ResultSize] <int>] [-Inlineimages] [-BrowserFriendlyUrls] [<CommonParameters>]
```

## DESCRIPTION
GET /tas/api/requesterChanges/{id}/requests
Lists the requests for this change.

## EXAMPLES

### EXAMPLE 1
```
Get-TdRequesterChangeRequest -Id $id
```

Lists the requests for this change.

## PARAMETERS

### -Id
The UNID (Unique ID) of the Change.

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

### -Inlineimages
Whether inline images should be returned.

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

### -BrowserFriendlyUrls
Normal download urls are api urls and require a token header. This parameter causes the api to return
urls that can be accessed by the current user by having a regular session like most web browsers do.
These download links are valid for one hour.

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
Position: 2
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
