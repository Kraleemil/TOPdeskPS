function Get-TdAssetFieldValue {
    <#
    .SYNOPSIS
        Returns Asset field values
    .DESCRIPTION
        Returns a single asset field including its possible values (GET /tas/api/assetmgmt/fields/{fieldId}).

        By default the version 1 media type (application/x.topdesk-am-fields-v1+json) is requested so the output keeps its old shape. TOPdesk has deprecated that media type and will remove it in a future release. Use -UseV2 to get the version 2 resource.
    .PARAMETER FieldId
        Id of the field that you want the value for. See Get-TdAssetField
    .PARAMETER UseV2
        Request the version 2 media type (application/x.topdesk-am-fields-v2+json).
    .EXAMPLE
        PS C:\> Get-TdAssetField | Get-TdAssetFieldValue

        Returns asset fieldvalues for all Asset fields.
        #>
    [cmdletbinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetFieldValue')]
    param(
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [Alias('id')]
        [system.string]$FieldId,

        [switch]
        $UseV2
    )

    process {
        $uri = (Get-TdUrl) + "/tas/api/assetmgmt/fields/$FieldId"
        $accept = if ($UseV2) { 'application/x.topdesk-am-fields-v2+json' } else { 'application/x.topdesk-am-fields-v1+json' }
        Invoke-TdMethod -Uri $uri -Accept $accept
    }
}
