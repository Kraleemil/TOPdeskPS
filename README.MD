# TOPdeskPS

[![CI](https://github.com/Kraleemil/TOPdeskPS/actions/workflows/ci.yml/badge.svg)](https://github.com/Kraleemil/TOPdeskPS/actions/workflows/ci.yml)

## Description

PowerShell module to interact with TOPdesk through its REST API. This module can be used to ease daily administration of TOPdesk as well as provide awesome automation abilities.

## Preparing TOPdesk

In order to connect to TOPdesk you will need to have an account with the required permissions. Create a separate permission group that only allows the use of the API. Enable permissions for "REST API". 

See https://developers.topdesk.com/tutorial.html#show-collapse-config-topdesk for instructions on how to grant API permissions and how to generate an application password if you prefer. This module supports using an application password and using standard topdesk login creds.

## Installing the module
TOPdeskPS is published to the PowerShell gallery and can be installed by running:
```powershell
  Install-Module -Name TOPdeskPS -Repository PSGallery -Scope CurrentUser
```

## Connecting to TOPdesk

### Using an application password (recommended)

Create an application password in TOPdesk (My settings > Application passwords). The username is the TOPdesk login name of the user who created the application password.

```powershell
  Connect-TdService -Url 'https://company.topdesk.net' -Credential (Get-Credential) -ApplicationPassword -Register
```
Connects to your TOPdesk instance and registers the url. The next time you run Connect-TdService it will remember your TOPdesk Url.

### In scripts and scheduled tasks

`Get-Credential` is what shows a login prompt. In unattended scripts build the credential yourself, for example from [SecretManagement](https://learn.microsoft.com/powershell/utility-modules/secretmanagement/overview):

```powershell
  $password = Get-Secret -Name TOPdeskAppPassword
  $credential = [pscredential]::new('api-user', $password)
  Connect-TdService -Url 'https://company.topdesk.net' -Credential $credential -ApplicationPassword
```

### Using TOPdesk login credentials (deprecated)
```powershell
  Connect-TdService -Url 'https://Company.TOPdesk.net' -Credential (Get-Credential)
```
Requests a login token with your normal TOPdesk password. TOPdesk has deprecated logging in as an operator this way in favour of application passwords, so the command writes a warning. It keeps working for existing scripts.

### Danish and other languages

All text is sent to and read from TOPdesk as UTF-8, so names like "Søren Ærø" work in parameters, filters, responses, file names and passwords. If æ, ø and å look wrong in a Windows PowerShell console, that is the console's display encoding; run `[Console]::OutputEncoding = [System.Text.Encoding]::UTF8` to fix the display.

## Get Incidents

Return incidents
```powershell
  Get-TdIncident -ResultSize 50
```

The filter parameters are sent to TOPdesk as a [FIQL query](https://developers.topdesk.com/tutorial.html#query). Add your own FIQL with `-Query`; it is combined with the other filters:
```powershell
  Get-TdIncident -Completed:$false -Query 'briefDescription=sw=Printer' -Fields 'id', 'number', 'briefDescription'
  Get-TdPerson -Query 'department.name==IT' -ResultSize ([int]::MaxValue)
```

## Create Incidents
```powershell
$IncidentParams = @{
  Action = 'Initial Action'
  BriefDescription = 'brief description'
  CallerEmail = 'Test@Test.com'
}
New-TdIncident @IncidentParams
```

## Update Incidents
```powershell
$incidentParams = @{
  Number = 'I1811-123'
  Action = 'Updated Action'
  Operator = (Get-TdOperator 'username@company.net').id
  Category = 'TechSupport'
  Subcategory = 'PowerShell'
}
Set-TdIncident @incidentParams
```

## Create Persons
```powershell
$personParams = @{
  Surname = 'Doe'
  BranchId = (Get-TdBranch -Name HQ).id
  NetworkLoginName = 'User@company.com'
  Gender = 'FEMALE'
  Email = 'User@company.com'
}
  New-TdPerson @personParams
```

## Send Notifications

Use the task notifications api to send alerts to your operators.

```powershell
Send-TdNotification -Title 'TOPdesk notification from PS!' -Body "You've got the power" -OperatorId (Get-TdOperator 'First.Last').id
```
![](./images/TOPdesk-Notif.png)

## Supported TOPdesk APIs

TOPdeskPS covers the TOPdesk REST APIs for Incident Management, Change Management, Asset Management, Supporting Files, Knowledge Base, Operations Management, Reservations, Visitor Registration, Services, Settings, SSP Look and Feel, Task Notifications, Access Roles and Custom Action Support. A few examples:

```powershell
  Get-TdReservation -Query 'status==planned' -ResultSize 20
  Get-TdVisitor -Id $visitorId
  Get-TdKnowledgeBaseItem -ResultSize 50
  Set-TdIncidentArchiveStatus -Number 'I2401-001' -Archive -ReasonId $reasonId
  Save-TdIncidentAttachment -Id $incidentId -AttachmentId $attachmentId -OutFile .\attachment.pdf
```

[docs/api-coverage.md](docs/api-coverage.md) lists every operation of the official API specifications with the command that covers it. The commands for the newer APIs are not separate files: [TOPdeskPS/data/operations.json](TOPdeskPS/data/operations.json) describes them (one line per command, generated from the specifications) and the module creates them when it is imported, all sharing one implementation (`Invoke-TdOperation`). See [build/apigen](build/apigen/README.md) for how to update the table when TOPdesk publishes a new version.

## Automation

GitHub Actions in [.github/workflows](.github/workflows):

| Workflow | When | What it does |
| --- | --- | --- |
| [CI](.github/workflows/ci.yml) | Every pull request and push to Development/master | Runs the Pester suite (including PSScriptAnalyzer) on Windows PowerShell 5.1, PowerShell 7 on Windows and PowerShell 7 on Linux, and checks that `data/operations.json` and `docs/api-coverage.md` match the TOPdesk specification versions in `build/apigen/specs.lock.json`. |
| [TOPdesk API update](.github/workflows/api-update.yml) | Mondays, or by hand (with an optional dry run) | Downloads the newest TOPdesk API specifications, regenerates the operations table and the coverage report, runs the tests and opens or updates a pull request from `apigen/api-update`. |
| [Publish](.github/workflows/publish.yml) | Pushing a tag such as `v0.2.0` | Runs CI, checks that the tag matches the module version, publishes to the PowerShell Gallery and creates a GitHub release from the CHANGELOG. |

Dependabot keeps the actions used by the workflows up to date.

Settings the workflows need:
- **Settings > Actions > General > Allow GitHub Actions to create and approve pull requests** for the weekly API update to open its pull request. Without it the workflow opens an issue instead. Pull requests opened by the workflow don't start CI by themselves (a GitHub rule for the built-in token); push a commit to the branch, or run CI on it by hand.
- **Settings > Secrets and variables > Actions > `PSGALLERY_API_KEY`** for publishing. The key's account must own the name TOPdeskPS in the PowerShell Gallery.

## Documentation
For the full web based documentation visit the [TOPdeskPS site](https://andrewpla.github.io/TOPdeskPS)

## Release History

A detailed release history is contained in the [Change Log](CHANGELOG.md).

## License

TOPdeskPS is provided under the [MIT license](LICENSE.md).
