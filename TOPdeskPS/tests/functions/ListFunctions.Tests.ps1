. "$PSScriptRoot\TestHelpers.ps1"

Describe "List functions send the expected requests" {
    InModuleScope TOPdeskPS {
        $script:__LoginToken = 'Basic dGVzdDp0ZXN0'
        Set-PSFConfig -FullName TOPdeskPS.Url -Value 'https://td.example'

        # Decodes the query string of a request uri into a hashtable of name -> values.
        function Get-QueryValue {
            param ($Uri, $Name)
            $query = ([uri]$Uri).Query.TrimStart('?')
            @(foreach ($pair in ($query -split '&')) {
                    $key, $value = $pair -split '=', 2
                    if ([uri]::UnescapeDataString($key) -eq $Name) { [uri]::UnescapeDataString($value) }
                })
        }

        Context "Invoke-TdPagedRequest" {
            It "requests pages until the result size is reached" {
                $script:calls = @()
                Mock Invoke-WebRequest { $script:calls += "$Uri"; New-TdFakeResponse (1..2 | ForEach-Object { [pscustomobject]@{ id = $_ } }) }
                $result = Invoke-TdPagedRequest -Uri 'https://td.example/tas/api/x' -StartParameter 'pageStart' -SizeParameter 'pageSize' -MaxPageSize 2 -ResultSize 5
                $result.Count | Should Be 5
                $script:calls.Count | Should Be 3
                Get-QueryValue $script:calls[2] 'pageStart' | Should Be '4'
                Get-QueryValue $script:calls[2] 'pageSize' | Should Be '1'
            }
            It "stops on a short page" {
                $script:calls = @()
                Mock Invoke-WebRequest { $script:calls += "$Uri"; New-TdFakeResponse ([pscustomobject]@{ id = 1 }) }
                $result = Invoke-TdPagedRequest -Uri 'https://td.example/tas/api/x' -MaxPageSize 10 -ResultSize 100
                @($result).Count | Should Be 1
                $script:calls.Count | Should Be 1
            }
            It "stops when the API returns no content" {
                Mock Invoke-WebRequest { New-TdFakeResponse -Empty }
                @(Invoke-TdPagedRequest -Uri 'https://td.example/tas/api/x' -ResultSize 100).Count | Should Be 0
            }
            It "unwraps envelopes" {
                Mock Invoke-WebRequest { New-TdFakeResponse ([pscustomobject]@{ results = @([pscustomobject]@{ id = 1 }, [pscustomobject]@{ id = 2 }); next = $null }) }
                $result = Invoke-TdPagedRequest -Uri 'https://td.example/tas/api/x' -MaxPageSize 10 -ResultSize 10
                ($result.id -join ',') | Should Be '1,2'
            }
            It "sends a single request when there is no start parameter" {
                $script:calls = @()
                Mock Invoke-WebRequest { $script:calls += "$Uri"; New-TdFakeResponse (1..3 | ForEach-Object { [pscustomobject]@{ id = $_ } }) }
                $null = Invoke-TdPagedRequest -Uri 'https://td.example/tas/api/x' -StartParameter '' -SizeParameter '$top' -MaxPageSize 3 -ResultSize 100
                $script:calls.Count | Should Be 1
                Get-QueryValue $script:calls[0] '$top' | Should Be '3'
            }
            It "passes the Accept header" {
                Mock Invoke-WebRequest { $script:headers = $Headers; New-TdFakeResponse (@()) }
                $null = Invoke-TdPagedRequest -Uri 'https://td.example/tas/api/x' -Accept 'application/x.test+json'
                $script:headers['Accept'] | Should Be 'application/x.test+json'
            }
        }

        Context "Get-TdIncident" {
            Mock Invoke-WebRequest { $script:lastUri = "$Uri"; New-TdFakeResponse (@()) }

            It "uses FIQL, pageStart/pageSize and the default sort" {
                Get-TdIncident -Completed:$false -OperatorGroupId 'g1', 'g2' -ResultSize 50
                $script:lastUri | Should BeLike 'https://td.example/tas/api/incidents?*'
                Get-QueryValue $script:lastUri 'query' | Should Be 'completed==false;operatorGroup.id=in=(g1,g2)'
                Get-QueryValue $script:lastUri 'pageSize' | Should Be '50'
                Get-QueryValue $script:lastUri 'pageStart' | Should Be '0'
                Get-QueryValue $script:lastUri 'sort' | Should Be 'creationDate:desc'
                Get-QueryValue $script:lastUri 'page_size' | Should BeNullOrEmpty
            }
            It "turns date ranges into whole days" {
                Get-TdIncident -CreationDateStart ([datetime]'2024-03-01 15:00') -CreationDateEnd ([datetime]'2024-03-02 08:00')
                $query = Get-QueryValue $script:lastUri 'query'
                $query | Should Match '^creationDate=ge=2024-03-01T00:00:00[+-]\d\d:\d\d;creationDate=lt=2024-03-03T00:00:00[+-]\d\d:\d\d$'
            }
            It "maps archived and partial statuses and sets all=true" {
                Get-TdIncident -Archived -Status 'firstLine', 'partial'
                Get-QueryValue $script:lastUri 'query' | Should Be 'status=in=(firstLineArchived,partialArchived)'
                Get-QueryValue $script:lastUri 'all' | Should Be 'true'
            }
            It "converts the old OrderBy format to sort" {
                Get-TdIncident -OrderBy 'creation_date+DESC,target_date+ASC'
                Get-QueryValue $script:lastUri 'sort' | Should Be 'creationDate:desc,targetDate:asc'
            }
            It "combines a user query with the filters" {
                Get-TdIncident -Closed -Query 'a==1,b==2' -Fields 'id', 'number'
                Get-QueryValue $script:lastUri 'query' | Should Be 'closed==true;(a==1,b==2)'
                Get-QueryValue $script:lastUri 'fields' | Should Be 'id,number'
            }
            It "falls back to the legacy filters for -Resolved" {
                Get-TdIncident -Resolved -ExternalLinkId 'x1' -ResultSize 5
                Get-QueryValue $script:lastUri 'resolved' | Should Be 'true'
                Get-QueryValue $script:lastUri 'external_link_id' | Should Be 'x1'
                Get-QueryValue $script:lastUri 'page_size' | Should Be '5'
                Get-QueryValue $script:lastUri 'query' | Should BeNullOrEmpty
            }
            It "falls back to the legacy filters for unassigned" {
                Get-TdIncident -OperatorId 'unassigned'
                Get-QueryValue $script:lastUri 'operator' | Should Be 'unassigned'
            }
            It "refuses to mix legacy-only filters with -Query" {
                { Get-TdIncident -Resolved -Query 'a==1' } | Should Throw
            }
            It "still gets incidents by number" {
                Get-TdIncident -Number 'I1234-567'
                $script:lastUri | Should Be 'https://td.example/tas/api/incidents/number/i1234-567'
            }
        }

        Context "Get-TdPerson" {
            Mock Invoke-WebRequest { $script:lastUri = "$Uri"; New-TdFakeResponse (@()) }

            It "uses starts-with FIQL and hides archived persons" {
                Get-TdPerson -FirstName 'Bo' -LastName 'van Dam'
                Get-QueryValue $script:lastUri 'query' | Should Be 'firstName=sw=Bo;surName=sw="van Dam";archived==false'
                Get-QueryValue $script:lastUri 'page_size' | Should Be '100'
            }
            It "includes archived persons with -Archived" {
                Get-TdPerson -Email 'a@b.c' -Archived
                Get-QueryValue $script:lastUri 'query' | Should Be 'email=sw=a@b.c'
            }
            It "falls back to the legacy filters for -MobileNumber" {
                Get-TdPerson -MobileNumber '612345678'
                Get-QueryValue $script:lastUri 'mobile_number' | Should Be '612345678'
                Get-QueryValue $script:lastUri 'query' | Should BeNullOrEmpty
            }
        }

        Context "Change functions" {
            Mock Invoke-WebRequest { $script:lastUri = "$Uri"; New-TdFakeResponse ([pscustomobject]@{ results = @() }) }

            It "Get-TdChange translates filters to FIQL" {
                Get-TdChange -Open -ChangeType simple -Phase rfc, progress
                Get-QueryValue $script:lastUri 'query' | Should Be 'changeType==simple;phase=in=(rfc,progress);open==true'
                Get-QueryValue $script:lastUri 'pageSize' | Should Be '1000'
            }
            It "Get-TdChange falls back for -Id" {
                Get-TdChange -Id 'abc'
                Get-QueryValue $script:lastUri 'id' | Should Be 'abc'
                Get-QueryValue $script:lastUri 'query' | Should BeNullOrEmpty
            }
            It "Get-TdChangeActivity filters on change id and number" {
                $guid = [guid]::NewGuid().ToString()
                Get-TdChangeActivity -Change $guid, 'C1801-123' -Archived:$false
                Get-QueryValue $script:lastUri 'query' | Should Be "(change.id==$guid,change.number==C1801-123);archived==false"
            }
        }

        Context "Other list functions" {
            Mock Invoke-WebRequest { $script:lastUri = "$Uri"; $script:headers = $Headers; New-TdFakeResponse (@()) }

            It "Get-TdOperator uses FIQL" {
                Get-TdOperator -TOPdeskLoginName 'jdoe' -ResultSize 300
                Get-QueryValue $script:lastUri 'query' | Should Be 'loginName=sw=jdoe;archived==false'
                Get-QueryValue $script:lastUri 'page_size' | Should Be '300'
            }
            It "Get-TdOperatorGroup uses FIQL" {
                Get-TdOperatorGroup -NameFragment 'IT' -Archived
                Get-QueryValue $script:lastUri 'query' | Should Be 'name=sw=IT'
            }
            It "Get-TdPersonGroup keeps the legacy filters without -Query" {
                Get-TdPersonGroup -NameFragment 'Sales'
                Get-QueryValue $script:lastUri 'name' | Should Be 'Sales'
            }
            It "Get-TdSupplierContact filters on the supplier" {
                Get-TdSupplierContact -SupplierId 's1'
                Get-QueryValue $script:lastUri 'query' | Should Be 'supplier.id==s1;archived==false'
            }
            It "Get-TdProcessingStatus uses /incidents/statuses" {
                Get-TdProcessingStatus
                $script:lastUri | Should Be 'https://td.example/tas/api/incidents/statuses'
            }
            It "Get-TdAssetField pins the v1 media type by default" {
                Mock Invoke-WebRequest { $script:headers = $Headers; New-TdFakeResponse ([pscustomobject]@{ dataSet = @() }) }
                Get-TdAssetField
                $script:headers['Accept'] | Should Be 'application/x.topdesk-am-fields-v1+json'
            }
        }

        Context "Connect-TdService" {
            It "warns when the deprecated operator login is used" {
                Mock Invoke-RestMethod { 'token-value' }
                Mock Write-PSFMessage { } -ParameterFilter { $Level -eq 'Warning' }
                $cred = [pscredential]::new('user', (ConvertTo-SecureString 'pw' -AsPlainText -Force))
                Connect-TdService -Credential $cred -Url 'https://td.example'
                Assert-MockCalled Write-PSFMessage -ParameterFilter { $Level -eq 'Warning' -and $Message -like '*deprecated*' } -Times 1
            }
            It "does not call the login endpoint for application passwords" {
                Mock Invoke-RestMethod { throw 'should not be called' }
                $cred = [pscredential]::new('user', (ConvertTo-SecureString 'pw' -AsPlainText -Force))
                { Connect-TdService -Credential $cred -Url 'https://td.example' -ApplicationPassword } | Should Not Throw
                $script:__LoginToken | Should Be 'Basic dXNlcjpwdw=='
            }
        }
    }
}
