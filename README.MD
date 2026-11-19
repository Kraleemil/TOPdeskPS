# TOPdeskPS

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

### Using TOPdesk login credentials (deprecated)
```powershell
  Connect-TdService -Url 'https://Company.TOPdesk.net' -Credential (Get-Credential)
```
Requests a login token with your normal TOPdesk password. TOPdesk has deprecated logging in as an operator this way in favour of application passwords, so the command writes a warning. It keeps working for existing scripts.

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

[docs/api-coverage.md](docs/api-coverage.md) lists every operation of the official API specifications with the command that covers it. Most of the commands for the newer APIs are generated from those specifications; see [build/apigen](build/apigen/README.md) for how to update them when TOPdesk publishes a new version.

## Documentation
For the full web based documentation visit the [TOPdeskPS site](https://andrewpla.github.io/TOPdeskPS)

## Release History

A detailed release history is contained in the [Change Log](CHANGELOG.md).

## License

TOPdeskPS is provided under the [MIT license](LICENSE.md).
