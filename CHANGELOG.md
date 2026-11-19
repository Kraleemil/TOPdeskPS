# TOPdeskPS Release History

## 0.2.0

Compared with the official TOPdesk API specifications on developers.topdesk.com (Incident 4.2.10, Supporting Files 2.7.12, Change 1.42.0, Assets 1.91.3, General 1.2.0, Operations Management 1.10.1, Reservations 2.1.0, Visitors 2.0.0, Services 1.4.0 and others). See [docs/api-coverage.md](docs/api-coverage.md) for the full comparison.

### Changed (existing commands follow the current API, existing parameters keep working)
* Get-TdIncident, Get-TdPerson, Get-TdChange, Get-TdChangeActivity, Get-TdOperator, Get-TdOperatorGroup, Get-TdPersonGroup and Get-TdSupplierContact translate their filter parameters to a FIQL query and get a -Query parameter (and -Fields / -Sort where the API supports them). Filters without a FIQL equivalent (for example Get-TdIncident -Resolved or Get-TdPerson -MobileNumber) still use the old query parameters.
* Get-TdIncident uses pageStart/pageSize and sort; -OrderBy values in the old format are converted.
* Get-TdChange and Get-TdChangeActivity return more than the first 1000 results when asked (-ResultSize, -Start).
* Get-TdProcessingStatus uses /incidents/statuses; /incidents/processing_status was removed from the Incident API.
* Connect-TdService writes a warning when logging in as an operator with a normal password, which TOPdesk has deprecated. Use -ApplicationPassword.
* Get-TdAsset requests the v2 assets media type explicitly; Get-TdAssetField and Get-TdAssetFieldValue request v1 explicitly (deprecated by TOPdesk) and have a -UseV2 switch.
* Invoke-TdMethod has new -Accept and -OutFile parameters.

### Added
* 362 commands generated from the official specifications for the operations TOPdeskPS did not cover yet, among them:
  * Incident Management: progress trail, requests, attachments, images, archive/escalation status, lookups, SLAs, time registrations and the requester (SSP) endpoints.
  * Supporting Files: person v2 (Update-TdPerson, contract, private details, lookups), locations, branches, person groups, extra field entries, archiving, attachments.
  * Change Management: requester changes, manager authorizations, rejection reasons, statuses, time registrations, linked persons.
  * Asset Management: stock quantities, dropdowns, card types, statuses, links, grid fields, history.
  * New areas: Knowledge Base, Operations Management, Reservations, Visitor Registration, Services, Settings, SSP Look and Feel, Access Roles and Custom Action Support.
* build/apigen: downloads the specifications, generates the commands and the coverage report (see build/apigen/README.md).
* build/New-TdCommandDoc.ps1 regenerates the command reference in docs/commands.
* GitHub Actions: CI on Windows PowerShell 5.1 and PowerShell 7 (Windows and Linux), a weekly TOPdesk API update that opens a pull request, publishing to the PowerShell Gallery on a version tag, and Dependabot for the workflow actions.

### Fixed
* Danish and other non-ASCII text (æ, ø, å, ü, é, …) now works on every PowerShell version:
  * Request bodies are sent as UTF-8 with charset=utf-8 (Windows PowerShell sent ISO-8859-1).
  * Responses are decoded with the charset TOPdesk sends, or UTF-8 when it sends none (Windows PowerShell used ISO-8859-1).
  * File uploads send UTF-8 field values and file names and the file content unchanged; one implementation for Windows PowerShell 5.1 and PowerShell 7.
  * User names and passwords are encoded as UTF-8 in the Basic authorization header (they were ASCII, so æøå became "?").
* Get-TdIncident ignored -ExternalLinkId.
* Get-TdOperator never returned more than one page of results.
* Get-TdChangeActivity ignored -Archived.
* Get-TdSupplierContact ignored -SupplierId.
* Get-TdAsset -TemplateId -Archived sent a malformed includeArchived value.
* The function tests in tests/functions were never run (wrong file filter), and the general tests now run on PowerShell 7.

## 0.1.5

### Fixed
* Get-TdPersonGroup has been updated to include more parameters, including -ResultSize which will automatically loop and send multiple web requests without the need for manually doing any looping.
* Increased the required versin of PSFramework

## 0.1.3

### Fixed
* Fixed the Status parameter of New-TdIncident so it now enforces the proper casing. Closes #89


## 0.1.2

### Added

* Get-TdKnowledgeItem

### Fixed

* New-TdIncident parameter CallerEmail is no longer mandatory.


## 0.0.8- Jan 9th, 2019

### Fixed
* Get-TdDepartment - Fixed the name parameter #56
* New-TdPerson - Fixed the department argument #57

## 0.0.7 - January 6th, 2019

### Added

* Get-TdBranchFilter- Thanks Michael!
* Get-TdCategoryFilter
* Get-TdOperatorFilter
* Get-TdOperatorOperatorGroup
* Get-TdOperatorAvatar
* Get-TdPersonAvatar
* Get-TdDepartment
* New-TdBranch
* Set-TdBranch
* New-TdBudgetHolder
* Tons of other commands

### Fixed

* Added support for PS Core.
* Fixed several small typos/bugs
* Fixed bad help/docs


## 0.0.6 - 10/14/2018

### Added

* New-TdChangeAction
* Get-TdChangeActivity
* Get-TdAsset
* Get-TdAssetTemplateBlank
* New-TdAsset
* Get-TdAssetTemplate
* Remove-TdAsset
* Set-TdAsset
* Get-TdAssetLink
* Set-TdAssetLink
* Get-TdAssetLinkPossibleRelation
* Remove-TdAssetLink
* Get-TdAssetAssignment
* Add-TdAssetAssignment
* Remove-TdAssetAssignment
* Send-TdAssetFile
* Get-TdAssetFile
* Remove-TdAssetFile
* Get-TdAssetField
* Get-TdAssetFieldValue
* Get-TdAssetCapability
* Get-TdAssetDetail
* Get-TdAssetCapabilityDetail
* New-TdAssetCapability
* Set-TdAssetCapability

### Fixed

* Get-TdChange now returns the proper changes
* #30 Connect-TdService now supports using application passwords using the ApplicationPassword parameter.

## 0.0.5 - 9/30/2018

### Added

* Get-TdApiVersion
* Get-TdArchiveReason
* Get-TdBranch
* Get-TdBudgetHolder
* Get-TdCallType
* Get-TdCategory
* Get-TdChange
* Get-TdClosureCode
* Get-TdCountry
* Get-TdDeescealationReason
* Get-TdDuration
* Get-TdEntryType
* Get-TdEscalationReason
* Get-TdImpact
* Get-TdIncidentAction
* Get-TdKnowledgeItem
* Get-TdPerson
* Get-TdPersonGroup
* Get-TdPriority
* Get-TdProcessingStatus
* Get-TdServiceWindow
* Get-TdUrgency
* Get-TdTimeSpentReason
* New-TdPerson
* New-TdChange
* Send-TdIncidentFile
* Send-TdTaskNotification
* Set-TdPerson
* Get-TdOperatorGroup

## 0.0.3 - 8/22/2018

### Fixed

* Better logging
* boolean params are now switch! Sorry :)

### Added

* Get-TdCategory
* Get-TdSubcategory
* Get-TdOperator
* Fancy tab completion. As part of Connect-TdService we make a few basic api calls to enable tab completion based on your TOPdesk environment.
* Added new configuration system using PSFramework
* Added PSFramework as a required module.
* Massively updated the build system to use VSTS
* Created a site for this project [andrewpla.github.io/TOPdeskPS]('https://andrewpla.github.io/TOPdeskPS')

### Changed

* Added PSFramework as a required module.
* Lots of small changes

## 0.0.2 - 7/9/2018

### Fixed

* many fixes

### Added

* Send-TdImportFile

### Changed

* Added more functions/polishing.

## 0.0.1 - 7/9/2018

### Fixed

* Initial release

### Added

* Initial release

### Changed

* Initial release
