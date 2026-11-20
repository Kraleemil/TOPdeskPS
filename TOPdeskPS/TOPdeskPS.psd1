@{
    # Script module or binary module file associated with this manifest
    RootModule = 'TOPdeskPS.psm1'

    # Version number of this module.
    ModuleVersion = '0.2.1'


    # ID used to uniquely identify this module
    GUID = '3c6f28d6-772c-4325-8236-d4bc99373aa9'

    # Author of this module
    Author = 'Andrew Pla'

    # Company or vendor of this module
    CompanyName = ''

    # Copyright statement for this module
    Copyright = 'Copyright (c) 2018 Andrew Pla'

    # Description of the functionality provided by this module
    Description = 'Module to interact with the TOPdesk API. Interact with changes, incidents, assets, supporting files, notifications and more.'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.0'

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of the .NET Framework required by this module
    # DotNetFrameworkVersion = '2.0'

    # Minimum version of the common language runtime (CLR) required by this module
    # CLRVersion = '2.0.50727'

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    # ProcessorArchitecture = 'None'

    # Modules that must be imported into the global environment prior to importing
    # this module
    RequiredModules = @(
        @{
            ModuleName = 'PSFramework'; ModuleVersion = '1.0.19'
        }
    )

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to
    # importing this module
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    #TypesToProcess = @('xml\TOPdeskPS.Types.ps1xml')

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @('xml\TOPdeskPS.Format.ps1xml')

    # Modules to import as nested modules of the module specified in
    # ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module
    FunctionsToExport = @('Add-TdAssetAssignment','Add-TdAssetBulkAssignment','Add-TdAssetKnowledgeItemLink','Add-TdAssetServiceLink','Add-TdAssetTaskLink','Add-TdCatalogServiceLinkedAsset','Add-TdChangePerson','Add-TdKnowledgeBaseFolderBranch','Add-TdKnowledgeBaseItemBranch','Add-TdOperationalActivityLinkedAsset','Add-TdOperationalActivityLinkedBranch','Add-TdOperationalActivityLinkedLocation','Add-TdReservationOccurrence','Add-TdReservationParticipant','Add-TdReservationReservedFacility','Approve-TdReservation','Connect-TdService','ConvertTo-TdPdf','Copy-TdAsset','Deny-TdReservation','Disconnect-TdService','Get-TdAccessRole','Get-TdAccessRoleConfiguration','Get-TdApiVersion','Get-TdApplicableActivityTemplate','Get-TdArchiveReason','Get-TdAsset','Get-TdAssetAction','Get-TdAssetAssignment','Get-TdAssetCapability','Get-TdAssetCapabilityDetail','Get-TdAssetCardType','Get-TdAssetDetail','Get-TdAssetDropdownOption','Get-TdAssetField','Get-TdAssetFieldValue','Get-TdAssetFile','Get-TdAssetGridFieldRow','Get-TdAssetGridFieldValue','Get-TdAssetHistoryCurrentItem','Get-TdAssetHistoryPastItem','Get-TdAssetLink','Get-TdAssetLinkPossibleRelation','Get-TdAssetStatus','Get-TdAssetStockQuantity','Get-TdAssetStockTotal','Get-TdAssetTemplate','Get-TdAssetTemplateBlank','Get-TdBranch','Get-TdBranchAttachment','Get-TdBranchBuildingLevel','Get-TdBranchDesignation','Get-TdBranchDetail','Get-TdBranchEnergyPerformance','Get-TdBranchEnvironmentalImpact','Get-TdBranchFilter','Get-TdBranchListedBuilding','Get-TdBranchLookup','Get-TdBranchSearchlist','Get-TdBudgetHolder','Get-TdCallType','Get-TdCatalogService','Get-TdCatalogServiceLinkedAsset','Get-TdCategory','Get-TdCategoryFilter','Get-TdCategoryTree','Get-TdChange','Get-TdChangeActivity','Get-TdChangeActivityDetail','Get-TdChangeActivityOptionalFieldSearchlist','Get-TdChangeActivityProgressTrail','Get-TdChangeActivityRejectionReason','Get-TdChangeActivityRequest','Get-TdChangeActivityStatus','Get-TdChangeActivityTimeRegistration','Get-TdChangeBenefit','Get-TdChangeCalendar','Get-TdChangeCalendarDetail','Get-TdChangeCalendarProgress','Get-TdChangeCalendarRequest','Get-TdChangeDetail','Get-TdChangeImpact','Get-TdChangeOptionalFieldSearchlist','Get-TdChangeOrderedItem','Get-TdChangePerson','Get-TdChangePriority','Get-TdChangeProgress','Get-TdChangeRejectionReason','Get-TdChangeRequest','Get-TdChangeSetting','Get-TdChangeStatus','Get-TdChangeTemplate','Get-TdChangeTimeRegistration','Get-TdChangeType','Get-TdClosureCode','Get-TdCountry','Get-TdCurrency','Get-TdDeescalationReason','Get-TdDepartment','Get-TdDuration','Get-TdEmail','Get-TdEntryType','Get-TdEscalationReason','Get-TdFacilityOccupancy','Get-TdImpact','Get-TdIncident','Get-TdIncidentAction','Get-TdIncidentAttachment','Get-TdIncidentCallerLookup','Get-TdIncidentImage','Get-TdIncidentOperatorGroupLookup','Get-TdIncidentOperatorLookup','Get-TdIncidentProgressTrail','Get-TdIncidentProgressTrailCount','Get-TdIncidentRequest','Get-TdIncidentSearchlist','Get-TdIncidentSla','Get-TdIncidentSlaService','Get-TdIncidentTimeRegistration','Get-TdIncidentTimeSpent','Get-TdKnowledgeBaseFolder','Get-TdKnowledgeBaseFolderBranch','Get-TdKnowledgeBaseItem','Get-TdKnowledgeBaseItemAttachment','Get-TdKnowledgeBaseItemBranch','Get-TdKnowledgeBaseItemImage','Get-TdKnowledgeBaseItemStatus','Get-TdKnowledgeBaseMigratedFolder','Get-TdKnowledgeBaseMigrationStatus','Get-TdKnowledgeItem','Get-TdLanguage','Get-TdLocation','Get-TdLocationBuildingZone','Get-TdLocationCeilingCovering','Get-TdLocationDetail','Get-TdLocationFloorCovering','Get-TdLocationFunctionalUse','Get-TdLocationGlassMaterial','Get-TdLocationLookup','Get-TdLocationSearchlist','Get-TdLocationStatus','Get-TdLocationType','Get-TdLocationWallCovering','Get-TdLoggedInOperator','Get-TdLoggedInOperatorId','Get-TdLoggedInOperatorSetting','Get-TdLoggedInPerson','Get-TdLookAndFeelProfile','Get-TdLookAndFeelProfileBanner','Get-TdLookAndFeelProfileLogo','Get-TdManagerAuthorizable','Get-TdManagerAuthorizableActivity','Get-TdManagerAuthorizableActivityChangeProgressTrail','Get-TdManagerAuthorizableActivityChangeRequest','Get-TdManagerAuthorizableActivityProgressTrail','Get-TdManagerAuthorizableActivityRequest','Get-TdManagerAuthorizableChange','Get-TdManagerAuthorizableChangeOrderedItem','Get-TdManagerAuthorizableChangeProgressTrail','Get-TdManagerAuthorizableChangeRequest','Get-TdOperationalActivityAction','Get-TdOperationalActivityAnomalyReason','Get-TdOperationalActivityAttachment','Get-TdOperationalActivityEmail','Get-TdOperationalActivityGrouping','Get-TdOperationalActivityLinkedObject','Get-TdOperationalActivityRequest','Get-TdOperationalActivitySchema','Get-TdOperationalActivitySetting','Get-TdOperationalActivitySkipReason','Get-TdOperationalActivityStatus','Get-TdOperationalActivityTimeRegistration','Get-TdOperationalActivityType','Get-TdOperationalSeries','Get-TdOperator','Get-TdOperatorAvatar','Get-TdOperatorDetail','Get-TdOperatorFilter','Get-TdOperatorGroup','Get-TdOperatorGroupDetail','Get-TdOperatorGroupLookup','Get-TdOperatorGroupMember','Get-TdOperatorLookup','Get-TdOperatorSearchlist','Get-TdPermissionGroup','Get-TdPerson','Get-TdPersonAvatar','Get-TdPersonContract','Get-TdPersonCount','Get-TdPersonDetail','Get-TdPersonExtraFieldAEntry','Get-TdPersonExtraFieldBEntry','Get-TdPersonGroup','Get-TdPersonGroupDetail','Get-TdPersonGroupLookup','Get-TdPersonGroupPerson','Get-TdPersonLookup','Get-TdPersonPersonGroup','Get-TdPersonPrivateDetail','Get-TdPersonSearchlist','Get-TdPicture','Get-TdPriority','Get-TdProcessingStatus','Get-TdProductVersion','Get-TdReportingAccessRole','Get-TdRequesterBranch','Get-TdRequesterCategory','Get-TdRequesterChange','Get-TdRequesterChangeOrderedItem','Get-TdRequesterChangeProgressTrail','Get-TdRequesterChangeRequest','Get-TdRequesterIncident','Get-TdRequesterIncidentAction','Get-TdRequesterIncidentAttachment','Get-TdRequesterIncidentCallType','Get-TdRequesterIncidentCategory','Get-TdRequesterIncidentImage','Get-TdRequesterIncidentProgressTrail','Get-TdRequesterIncidentProgressTrailCount','Get-TdRequesterIncidentRequest','Get-TdRequesterIncidentSubcategory','Get-TdRequesterLocation','Get-TdRequesterOperatorAvatar','Get-TdRequesterPerson','Get-TdRequesterPersonCount','Get-TdRequesterVisitor','Get-TdRequesterVisitorAttachment','Get-TdReservableAsset','Get-TdReservableAssetReservableInterval','Get-TdReservableLocation','Get-TdReservableLocationReservableInterval','Get-TdReservableService','Get-TdReservation','Get-TdReservationAttachment','Get-TdReservationCancellationReason','Get-TdReservationOptionalSearchlist','Get-TdReservationProcessingStatus','Get-TdReservationRejectionReason','Get-TdServiceType','Get-TdServiceWindow','Get-TdServiceWindowLookup','Get-TdSubcategory','Get-TdSupplier','Get-TdSupplierContact','Get-TdSupplierContactDetail','Get-TdSupplierDetail','Get-TdSupplierLookup','Get-TdTimeSpentReason','Get-TdUrgency','Get-TdUrl','Get-TdVisitor','Get-TdVisitorAttachment','Get-TdVisitorBadge','Get-TdVisitorCarPark','Get-TdVisitorIdentificationType','Get-TdVisitorOptionalSearchlist','Invoke-TdMethod','Invoke-TdWebhook','Move-TdKnowledgeBaseFolder','Move-TdKnowledgeBaseItem','Move-TdReservation','Move-TdReservationReservedFacility','New-TdAsset','New-TdAssetCapability','New-TdAssetDropdownOption','New-TdAssetFromTemplate','New-TdAssetStockQuantity','New-TdBranch','New-TdBudgetHolder','New-TdCatalogService','New-TdChange','New-TdChangeAction','New-TdChangeActivityProgressTrail','New-TdChangeActivityTimeRegistration','New-TdChangeOrderedItem','New-TdChangeProgress','New-TdChangeTimeRegistration','New-TdDepartment','New-TdIncident','New-TdKnowledgeBaseFolder','New-TdKnowledgeBaseItem','New-TdKnowledgeBaseItemStatus','New-TdLocation','New-TdManagerAuthorizableActivityProgressTrail','New-TdManagerAuthorizableChangeProgressTrail','New-TdOperationalActivity','New-TdOperationalActivityAction','New-TdOperationalActivityTimeRegistration','New-TdOperator','New-TdOperatorGroup','New-TdOperatorSearchlist','New-TdPerson','New-TdPersonExtraFieldAEntry','New-TdPersonExtraFieldBEntry','New-TdPersonGroup','New-TdPersonSearchlist','New-TdQrCode','New-TdRequesterChangeProgressTrail','New-TdRequesterIncident','New-TdRequesterReservation','New-TdReservation','New-TdReservationCancellationReason','New-TdReservationProcessingStatus','New-TdReservationRejectionReason','New-TdReservationReservedService','New-TdServiceType','New-TdVisitor','New-TdVisitorBadge','New-TdVisitorCarPark','New-TdVisitorIdentificationType','New-TdVisitorOptionalSearchlist','Remove-TdAsset','Remove-TdAssetAssignment','Remove-TdAssetCapability','Remove-TdAssetEntityLink','Remove-TdAssetField','Remove-TdAssetFile','Remove-TdAssetGridFieldRow','Remove-TdAssetLink','Remove-TdAssetStockQuantity','Remove-TdBranchAttachment','Remove-TdBudgetHolder','Remove-TdCatalogServiceLinkedAsset','Remove-TdChangeAction','Remove-TdChangeActivityAction','Remove-TdChangeActivityAttachment','Remove-TdChangeActivityRequest','Remove-TdChangeAttachment','Remove-TdChangeOrderedItem','Remove-TdChangePerson','Remove-TdChangeRequest','Remove-TdDepartment','Remove-TdEmail','Remove-TdIncidentAction','Remove-TdIncidentAttachment','Remove-TdIncidentRequest','Remove-TdKnowledgeBaseFolderBranch','Remove-TdKnowledgeBaseFolderTranslation','Remove-TdKnowledgeBaseItemAttachment','Remove-TdKnowledgeBaseItemBranch','Remove-TdKnowledgeBaseItemImage','Remove-TdKnowledgeBaseItemTranslation','Remove-TdRequesterVisitorAttachment','Remove-TdReservationParticipant','Remove-TdReservationReservedFacility','Remove-TdVisitorAttachment','Save-TdBranchAttachment','Save-TdChangeActivityAttachment','Save-TdChangeAttachment','Save-TdChangeCalendarAttachment','Save-TdIncidentAttachment','Save-TdKnowledgeBaseItemAttachment','Save-TdKnowledgeBaseItemImage','Save-TdManagerAuthorizableActivityAttachment','Save-TdManagerAuthorizableActivityChangeAttachment','Save-TdManagerAuthorizableChangeAttachment','Save-TdOperationalActivityAttachment','Save-TdRequesterChangeAttachment','Save-TdRequesterIncidentAttachment','Search-TdAsset','Search-TdTopdesk','Send-TdAssetFile','Send-TdAssetImportFile','Send-TdBranchAttachment','Send-TdChangeActivityFile','Send-TdChangeFile','Send-TdIncidentAttachment','Send-TdIncidentFile','Send-TdKnowledgeBaseItemAttachment','Send-TdKnowledgeBaseItemFeedback','Send-TdKnowledgeBaseItemImage','Send-TdManagerAuthorizableActivityAttachment','Send-TdManagerAuthorizableChangeAttachment','Send-TdNotification','Send-TdOperationalActivityAttachment','Send-TdPicture','Send-TdRequesterChangeAttachment','Send-TdRequesterIncidentAttachment','Send-TdRequesterVisitorAttachment','Send-TdReservationAttachment','Send-TdVisitorAttachment','Send-TdWebDAVFile','Set-TdAsset','Set-TdAssetArchiveStatus','Set-TdAssetAssignmentBranch','Set-TdAssetAssignmentLocation','Set-TdAssetAssignmentPerson','Set-TdAssetAssignmentPersonGroup','Set-TdAssetCapability','Set-TdAssetCapabilityArchiveStatus','Set-TdAssetChildLink','Set-TdAssetGridFieldRow','Set-TdAssetIncomingLink','Set-TdAssetLink','Set-TdAssetOutgoingLink','Set-TdAssetParentLink','Set-TdAssetStockQuantity','Set-TdBranch','Set-TdBranchArchiveStatus','Set-TdBudgetHolder','Set-TdBudgetHolderArchiveStatus','Set-TdCatalogServiceLinkedAsset','Set-TdChange','Set-TdChangeActivity','Set-TdChangeArchiveStatus','Set-TdChangeProcessingStatus','Set-TdDepartment','Set-TdDepartmentArchiveStatus','Set-TdIncident','Set-TdIncidentArchiveStatus','Set-TdIncidentEscalation','Set-TdIncidentTimeSpent','Set-TdKnowledgeBaseFolder','Set-TdKnowledgeBaseFolderArchiveStatus','Set-TdKnowledgeBaseFolderTranslation','Set-TdKnowledgeBaseItem','Set-TdKnowledgeBaseItemArchiveStatus','Set-TdKnowledgeBaseItemStatus','Set-TdKnowledgeBaseItemStatusArchiveStatus','Set-TdKnowledgeBaseItemTranslation','Set-TdLocation','Set-TdLocationArchiveStatus','Set-TdManagerAuthorizableActivityDecision','Set-TdManagerAuthorizableChangeProcessingStatus','Set-TdOperationalActivity','Set-TdOperationalActivityRequest','Set-TdOperator','Set-TdOperatorArchiveStatus','Set-TdOperatorBranchFilter','Set-TdOperatorCategoryFilter','Set-TdOperatorGroup','Set-TdOperatorGroupArchiveStatus','Set-TdOperatorOperatorFilter','Set-TdOperatorOperatorGroup','Set-TdOperatorPermissionGroup','Set-TdPerson','Set-TdPersonArchiveStatus','Set-TdPersonContract','Set-TdPersonGroup','Set-TdPersonGroupArchiveStatus','Set-TdPersonPrivateDetail','Set-TdRequesterIncident','Set-TdRequesterVisitor','Set-TdReservation','Set-TdReservationCancellationReason','Set-TdReservationCancellationReasonArchiveStatus','Set-TdReservationOccurrence','Set-TdReservationOptionalSearchlist','Set-TdReservationOptionalSearchlistArchiveStatus','Set-TdReservationProcessingStatus','Set-TdReservationProcessingStatusArchiveStatus','Set-TdReservationRecurrence','Set-TdReservationRejectionReason','Set-TdReservationRejectionReasonArchiveStatus','Set-TdServiceType','Set-TdServiceTypeArchiveStatus','Set-TdVisitor','Set-TdVisitorArchiveStatus','Set-TdVisitorBadge','Set-TdVisitorBadgeArchiveStatus','Set-TdVisitorCarPark','Set-TdVisitorCarParkArchiveStatus','Set-TdVisitorIdentificationType','Set-TdVisitorIdentificationTypeArchiveStatus','Set-TdVisitorOptionalSearchlist','Set-TdVisitorOptionalSearchlistArchiveStatus','Stop-TdChange','Stop-TdReservation','Update-TdAsset','Update-TdChangeActivity','Update-TdPerson')

    # Cmdlets to export from this module
    CmdletsToExport = ''

    # Variables to export from this module
    VariablesToExport = ''

    # Aliases to export from this module
    AliasesToExport = ''

    # List of all modules packaged with this module
    ModuleList = @()

    # List of all files packaged with this module
    FileList = @()

    # Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{

        #Support for PowerShellGet galleries.
        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('TOPdesk', 'API')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/AndrewPla/TOPdeskPS/blob/master/LICENSE.md'

            # A URL to the main website for this project.
            ProjectUri = 'https://andrewpla.github.io/TOPdeskPS'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            ReleaseNotes = 'https://github.com/AndrewPla/TOPdeskPS/blob/master/CHANGELOG.md'

        } # End of PSData hashtable

    } # End of PrivateData hashtable
}








