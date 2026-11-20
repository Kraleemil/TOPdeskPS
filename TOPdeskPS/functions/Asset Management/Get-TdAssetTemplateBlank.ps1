function Get-TdAssetTemplateBlank {
    <#
	.SYNOPSIS
		Returns blank asset cards
	.DESCRIPTION
        Returns a blank asset card for a template (GET /tas/api/assetmgmt/assets/blank), by template name or id. The result shows all the fields on the card and their properties.
        Use it to see the mandatory fields of the asset, and with that, create new assets of that type.
    .PARAMETER TemplateName
        Name of the template.
    .PARAMETER TemplateId
        Id of the template. See Get-TdAssetTemplate.
	.EXAMPLE
        PS C:\> Get-TdAssetTemplateBlank -TemplateName 'Network Device'

		Returns all fields on the card for the template specified.
	.EXAMPLE
        PS C:\> Get-TdAssetTemplate | Where-Object name -eq 'Network Device' | Get-TdAssetTemplateBlank

		Returns the blank card of the template, using its id.
#>

    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/Get-TdAssetTemplateBlank', DefaultParameterSetName = 'Name')]
    param
    (
        [Parameter(Mandatory = $true, ParameterSetName = 'Name', Position = 0)]
        [system.string]$TemplateName,

        [Parameter(Mandatory = $true, ParameterSetName = 'Id', ValueFromPipelineByPropertyName = $true)]
        [Alias('Id')]
        [string]$TemplateId
    )

    process {
        if ($PSCmdlet.ParameterSetName -eq 'Id') {
            $uri = "$(Get-TdUrl)/tas/api/assetmgmt/assets/blank?templateId=$(ConvertTo-TdUrlValue -Value $TemplateId)"
        }
        else {
            $uri = "$(Get-TdUrl)/tas/api/assetmgmt/assets/blank?templateName=$(ConvertTo-TdUrlValue -Value $TemplateName)"
        }
        Invoke-TdMethod -Uri $uri
    }

}
