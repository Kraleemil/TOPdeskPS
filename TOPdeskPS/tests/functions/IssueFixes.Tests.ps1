. "$PSScriptRoot\TestHelpers.ps1"

# Fixes for issues and pull requests of the original repository (AndrewPla/TOPdeskPS).
Describe "Fixes from the original repository's issues and pull requests" {
    InModuleScope TOPdeskPS {
        Set-PSFConfig -FullName TOPdeskPS.Url -Value 'https://td.example'

        # The Disconnect-TdService tests at the end change the token; everything before needs a connection.
        $script:__LoginToken = 'Basic dGVzdDp0ZXN0'
        Mock Invoke-WebRequest {
            $script:call = [pscustomobject]@{ Uri = ([uri]$Uri).AbsoluteUri; Method = "$Method"; Body = (ConvertFrom-TdRequestBody -Body $Body) }
            New-TdFakeResponse @()
        }

        It "Get-TdBranchFilter works without -Operator (issue #123)" {
            { Get-TdBranchFilter } | Should Not Throw
            $script:call.Uri | Should Be 'https://td.example/tas/api/operators/filters/branch'
        }

        It "Get-TdCategoryFilter uses the operator id" {
            Get-TdCategoryFilter -Operator 'op1'
            $script:call.Uri | Should Be 'https://td.example/tas/api/operators/id/op1/filters/category'
        }

        It "Set-TdIncident -LocationId sets the location, not the object (issue #109)" {
            Set-TdIncident -Number 'I2401-001' -LocationId 'loc1' -Confirm:$false
            $body = $script:call.Body | ConvertFrom-Json
            $body.location.id | Should Be 'loc1'
            $body.PSObject.Properties.Name -contains 'object' | Should Be $false
        }

        It "Set-TdIncident accepts -IncidentNumber as in its old example (issue #110)" {
            Set-TdIncident -IncidentNumber 'I2401-001' -Action 'Test' -Confirm:$false
            $script:call.Uri | Should Be 'https://td.example/tas/api/incidents/number/i2401-001'
        }

        It "New-TdIncident sends optional fields, nested values included (issue #106)" {
            New-TdIncident -BriefDescription 'Test' -OptionalFields1 @{ boolean1 = $true; searchlist1 = @{ id = 's1' } } -Confirm:$false
            $body = $script:call.Body | ConvertFrom-Json
            $body.optionalFields1.boolean1 | Should Be $true
            $body.optionalFields1.searchlist1.id | Should Be 's1'
        }

        It "New-TdIncident sends closed in lower case (pull request #99)" {
            New-TdIncident -BriefDescription 'Test' -Closed 'true' -Confirm:$false
            $body = $script:call.Body | ConvertFrom-Json
            $body.PSObject.Properties.Name -ccontains 'closed' | Should Be $true
            $body.PSObject.Properties.Name -ccontains 'Closed' | Should Be $false
        }

        It "Get-TdAsset -Archived queries archived assets (pull request #125)" {
            Mock Invoke-WebRequest { $script:call = [pscustomobject]@{ Uri = ([uri]$Uri).AbsoluteUri }; New-TdFakeResponse ([pscustomobject]@{ dataSet = @() }) }
            Get-TdAsset -Archived
            $script:call.Uri | Should Be 'https://td.example/tas/api/assetmgmt/assets/?&archived=true'
        }

        It "Get-TdAsset -LinkedTo filters on a linked entity (pull request #99)" {
            Mock Invoke-WebRequest { $script:call = [pscustomobject]@{ Uri = ([uri]$Uri).AbsoluteUri }; New-TdFakeResponse ([pscustomobject]@{ dataSet = @() }) }
            Get-TdAsset -LinkedTo 'person/p1'
            $script:call.Uri | Should Be 'https://td.example/tas/api/assetmgmt/assets/?&linkedTo=person%2Fp1'
        }

        It "Get-TdAssetTemplateBlank accepts a template id from the pipeline (pull request #99)" {
            Mock Invoke-WebRequest { $script:call = [pscustomobject]@{ Uri = ([uri]$Uri).AbsoluteUri }; New-TdFakeResponse ([pscustomobject]@{ id = 't1' }) }
            [pscustomobject]@{ id = 't1'; name = 'Network Device' } | Get-TdAssetTemplateBlank
            $script:call.Uri | Should Be 'https://td.example/tas/api/assetmgmt/assets/blank?templateId=t1'
            Get-TdAssetTemplateBlank 'Network Device'
            $script:call.Uri | Should Be 'https://td.example/tas/api/assetmgmt/assets/blank?templateName=Network%20Device'
        }

        Context "Disconnect-TdService (issue #102)" {
            It "only forgets an application password" {
                $script:__LoginToken = 'Basic dGVzdDp0ZXN0'
                Mock Invoke-RestMethod { throw 'logout must not be called' }
                { Disconnect-TdService } | Should Not Throw
                $script:__LoginToken | Should BeNullOrEmpty
            }
            It "logs a login token out and forgets it" {
                $script:__LoginToken = 'TOKEN id="abc"'
                Mock Invoke-RestMethod { $script:logout = "$Uri" }
                Disconnect-TdService
                $script:logout | Should Be 'https://td.example/tas/api/logout'
                $script:__LoginToken | Should BeNullOrEmpty
            }
            It "forgets the token even when the logout fails" {
                $script:__LoginToken = 'TOKEN id="abc"'
                Mock Invoke-RestMethod { throw 'network down' }
                { Disconnect-TdService } | Should Throw
                $script:__LoginToken | Should BeNullOrEmpty
            }
        }
    }
}
