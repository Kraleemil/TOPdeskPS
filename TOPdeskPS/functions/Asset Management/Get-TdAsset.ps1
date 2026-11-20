function Get-TdAsset {
    <#
	.SYNOPSIS
		Returns TOPdesk assets
	.DESCRIPTION
        Returns assets. The command works in three ways:
        - Without parameters it calls /assetmgmt/import/assets and returns all non-archived assets (id and name).
        - With -NameFragment, -TemplateName, -LinkedTo, -ShowAssignments or -Archived it calls /assetmgmt/assets. That returns at most 50 assets with id, name, etag and state; use the filters to narrow the list.
        - With -TemplateId it calls /assetmgmt/assets/templateId/{templateId} and returns all assets of that template, with the fields given in -Field.
    .PARAMETER NameFragment
        To filter assets by their name-fragment use this parameter. It’s case-insensitive.
    .PARAMETER Archived
        Use -Archived to return only archived assets and -Archived:$false to return only active assets. Leave it out to return both.
    .PARAMETER TemplateName
        To filter assets by a specific template’s name (case sensitive).
    .PARAMETER ShowAssignments
        When it’s given it returns more meta information, including all person and location related assignments. See ‘/assignments’ endpoint documentation for more details about the response format.
    .PARAMETER TemplateId
        Id of the template specifying the type of assets to return. see Get-Tdtemplate to retrieve the id.
    .PARAMETER LinkedTo
        Only return assets linked to this entity: its type and id separated by a slash, for example 'person/<person id>' or 'incident/<incident id>'. Types: person, personGroup, branch, location and the external link types (incident, change, ...).
    .PARAMETER Field
        Which asset fields to include in the response. If not specified, only the id and name will be included. Fields should be referenced by their field id, not their display name. See Get-tdAssetField

	.EXAMPLE
		PS C:\> Get-TdAsset
		Get all topdesk assets
    .EXAMPLE
        PS C:\> Get-TdAsset -LinkedTo "person/$personId"

        Returns the assets linked to the person.
#>

    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/Get-TdAsset', DefaultParameterSetName = 'List')]

    param
    (

        [Parameter(ParameterSetName = 'Standard Query')]
        [system.string]$NameFragment,

        [Parameter(ParameterSetName = 'Standard Query')]
        [Parameter(ParameterSetName = 'Template Query')]
        [switch]$Archived,

        [Parameter(ParameterSetName = 'Standard Query')]
        [switch]$ShowAssignments,

        [Parameter(ParameterSetName = 'Standard Query')]
        [system.string]$TemplateName,

        [Parameter(ParameterSetName = 'Standard Query')]
        [string]$LinkedTo,

        # This is a different query so we need a seperate parameter set.
        [Parameter(Mandatory, ParameterSetName = 'Template Query')]
        $TemplateId,

        [system.string[]]
        $Field = 'name'
    )

    begin {
        Write-PSFMessage -Level InternalComment -Message "Bound parameters: $($PSBoundParameters.Keys -join ", ")" -Tag 'debug', 'start', 'param'
    }
    process {
        switch ($PsCmdlet.ParameterSetName) {
            'Standard Query' {
                $Uri = (Get-TdUrl) + '/tas/api/assetmgmt/assets/?'
                switch ($PSBoundParameters.keys) {
                    NameFragment {
                        $uri = "$uri&nameFragment=$NameFragment"
                    }
                    Archived {
                        $uri = "$uri&archived=$($Archived.IsPresent.ToString().ToLower())"
                    }
                    ShowAssignments {
                        $uri = "$uri&showAssignments=$ShowAssignments"
                    }
                    TemplateName {
                        $uri = "$uri&templateName=$TemplateName"
                    }
                    LinkedTo {
                        $uri = "$uri&linkedTo=$(ConvertTo-TdUrlValue -Value $LinkedTo)"
                    }
                }
                Invoke-TdMethod -Uri $uri -Accept 'application/x.topdesk-am-assets-v2+json' | Select-Object -ExpandProperty dataset  | Select-PSFObject -Typename 'TOPdeskPS.Asset' -KeepInputObject
            }

            'Template Query' {
                switch ($PSBoundParameters.Keys) {
                    TemplateId {
                        $uri = (get-tdurl) + "/tas/api/assetmgmt/assets/templateId/$TemplateId/?"
                    }
                    Archived {
                        $uri = $uri + "&includeArchived=$($Archived.ToString().ToLower())"
                    }
                }
                foreach ($f in $field) {
                    $uri = $uri + "&field=$F"
                }
                Invoke-TdMethod -Uri $uri | Select-Object -ExpandProperty results | Select-PSFObject -Typename 'TOPdeskPS.Asset' -KeepInputObject
            }

            List {
                $Uri = (Get-TdUrl) + '/tas/api/assetmgmt/import/assets/?'

                foreach ($f in $field) {
                    $uri = $uri + "&field=$F"
                }
                Invoke-TdMethod -Uri $uri  | Select-Object -ExpandProperty results
            }
        }
    }
    end {
    }
}
