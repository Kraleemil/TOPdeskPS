---
external help file: TOPdeskPS-help.xml
Module Name: TOPdeskPS
online version: https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Disconnect-TdService
schema: 2.0.0
---

# Disconnect-TdService

## SYNOPSIS
Disconnects you from the TOPdesk service and invalidates your login token.

## SYNTAX

```
Disconnect-TdService [<CommonParameters>]
```

## DESCRIPTION
Ends the TOPdeskPS session.
- After Connect-TdService with a TOPdesk password, the login token is invalidated at TOPdesk (GET /tas/api/logout).
- After Connect-TdService -ApplicationPassword there is no token to invalidate; the stored credentials are removed from the session.
Either way the module forgets the credentials, so the next command needs Connect-TdService again.

## EXAMPLES

### EXAMPLE 1
```
Disconnect-TdService
```

Disconnects from TOPdesk and invalidates your token.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
