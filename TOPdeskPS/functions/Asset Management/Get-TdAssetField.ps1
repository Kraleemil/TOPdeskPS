function Get-TdAssetField {
    <#
    .SYNOPSIS
        Lists asset fields
    .DESCRIPTION
        Returns all asset fields contained inside TOPdesk (GET /tas/api/assetmgmt/fields).

        By default the version 1 media type (application/x.topdesk-am-fields-v1+json) is requested so the output keeps its old shape. TOPdesk has deprecated that media type and will remove it in a future release. Use -UseV2 to get the version 2 resource, which has different property names (id, name, etag instead of fieldName, displayName, @etag).
    .PARAMETER UseV2
        Request the version 2 media type (application/x.topdesk-am-fields-v2+json).
    .EXAMPLE
        PS C:\> Get-TdAssetField

        Returns all asset fields
    .EXAMPLE
        PS C:\> Get-TdAssetField -UseV2

        Returns all asset fields in the version 2 format.
        #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdAssetField')]
    param(
        [switch]
        $UseV2
    )
    $uri = (Get-TdUrl) + "/tas/api/assetmgmt/fields"
    if ($UseV2) {
        Invoke-TdMethod -Uri $uri -Accept 'application/x.topdesk-am-fields-v2+json' | Select-Object -ExpandProperty fields
    }
    else {
        Write-PSFMessage -Level Verbose -Message 'Requesting the deprecated application/x.topdesk-am-fields-v1+json media type. Use -UseV2 for the new format.'
        Invoke-TdMethod -Uri $uri -Accept 'application/x.topdesk-am-fields-v1+json' | Select-Object -ExpandProperty DataSet
    }
}
