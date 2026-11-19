. "$PSScriptRoot\TestHelpers.ps1"

Describe "Generated functions send the expected requests" {
    InModuleScope TOPdeskPS {
        $script:__LoginToken = 'Basic dGVzdDp0ZXN0'
        Set-PSFConfig -FullName TOPdeskPS.Url -Value 'https://td.example'

        Mock Invoke-WebRequest {
            $script:call = [pscustomobject]@{ Uri = ([uri]$Uri).AbsoluteUri; Method = "$Method"; Body = (ConvertFrom-TdRequestBody -Body $Body); ContentType = $ContentType; Headers = $Headers }
            New-TdFakeResponse ([pscustomobject]@{ results = @() })
        }

        It "lists with the paging style of the endpoint" {
            Get-TdReservation -ResultSize 5 -Query 'status==planned'
            $script:call.Uri | Should Be 'https://td.example/tas/api/reservations?query=status%3D%3Dplanned&%24top=5'
            $script:call.Method | Should Be 'Get'
        }

        It "gets a single item by id" {
            Get-TdReservation -Id 'R 1'
            $script:call.Uri | Should Be 'https://td.example/tas/api/reservations/R%201'
        }

        It "uses offset paging for visitors" {
            Get-TdVisitor -ResultSize 3
            $script:call.Uri | Should Be 'https://td.example/tas/api/visitors?offset=0&pageSize=3'
        }

        It "selects the archive action with a switch and sends the reason" {
            Set-TdIncidentArchiveStatus -Number 'I2401-001' -Archive -ReasonId 'r1' -Confirm:$false
            $script:call.Method | Should Be 'Put'
            $script:call.Uri | Should Be 'https://td.example/tas/api/incidents/number/I2401-001/archive'
            ($script:call.Body | ConvertFrom-Json).id | Should Be 'r1'
        }

        It "selects the unarchive action and sends no body" {
            Set-TdIncidentArchiveStatus -Id 'abc' -Unarchive -UnarchivePartials -Confirm:$false
            $script:call.Uri | Should Be 'https://td.example/tas/api/incidents/id/abc/unarchive?unarchive_partials=true'
            $script:call.Body | Should BeNullOrEmpty
        }

        It "builds nested bodies and sends the vendor content type" {
            New-TdKnowledgeBaseItem -TranslationLanguage 'en' -TranslationContentTitle 'Printer' -ParentId 'f1' -Confirm:$false
            $script:call.Method | Should Be 'Post'
            $script:call.ContentType | Should Be 'application/x.topdesk-kb-create-ki-v1+json; charset=utf-8'
            $body = $script:call.Body | ConvertFrom-Json
            $body.translation.language | Should Be 'en'
            $body.translation.content.title | Should Be 'Printer'
            $body.parent.id | Should Be 'f1'
        }

        It "merges -Body with the other parameters" {
            $extra = @{ translation = @{ language = 'nl' }; extra = 1 }
            New-TdKnowledgeBaseItem -Body $extra -TranslationContentTitle 'X' -Confirm:$false
            $extra.translation.ContainsKey('content') | Should Be $false
            $body = $script:call.Body | ConvertFrom-Json
            $body.translation.language | Should Be 'nl'
            $body.translation.content.title | Should Be 'X'
            $body.extra | Should Be 1
        }

        It "does nothing with -WhatIf" {
            $script:call = $null
            Remove-TdAssetStockQuantity -Id 'x' -WhatIf
            $script:call | Should BeNullOrEmpty
        }

        It "saves downloads to -OutFile" {
            Mock Invoke-RestMethod { $script:call = [pscustomobject]@{ Uri = ([uri]$Uri).AbsoluteUri; OutFile = $OutFile } }
            Save-TdIncidentAttachment -Id 'i1' -AttachmentId 'a1' -OutFile 'TestDrive:\file.bin'
            $script:call.Uri | Should Be 'https://td.example/tas/api/incidents/id/i1/attachments/a1/download'
            $script:call.OutFile | Should Be 'TestDrive:\file.bin'
        }

        It "uploads files as multipart" {
            $file = Join-Path $TestDrive 'upload.txt'
            Set-Content -Path $file -Value 'hello'
            Send-TdIncidentAttachment -Id 'i1' -File $file -Description 'log' -InvisibleForCaller -Confirm:$false
            $script:call.Method | Should Be 'Post'
            $script:call.Uri | Should Be 'https://td.example/tas/api/incidents/id/i1/attachments'
            $script:call.ContentType | Should BeLike 'multipart/form-data; boundary=*'
            $script:call.Body | Should Match 'name="description"\r\nContent-Type: text/plain; charset=utf-8\r\n\r\nlog\r\n'
            $script:call.Body | Should Match 'name="invisibleForCaller"\r\nContent-Type: text/plain; charset=utf-8\r\n\r\ntrue\r\n'
            $script:call.Body | Should Match 'name="file"; filename="upload.txt"'
        }

        It "sends JSON patch documents" {
            Update-TdChangeActivity -Id 'A1801-001' -Body @(@{ op = 'replace'; path = '/briefDescription'; value = 'x' }) -Confirm:$false
            $script:call.Method | Should Be 'Patch'
            $script:call.ContentType | Should BeLike '*json-patch+json*'
            (@($script:call.Body | ConvertFrom-Json))[0].path | Should Be '/briefDescription'
        }

        It "sends flattened merge-patch bodies" {
            Set-TdOperationalActivity -Id 'oa1' -BriefDescription 'Check backups' -StatusId 's1' -Confirm:$false
            $script:call.Method | Should Be 'Patch'
            $body = $script:call.Body | ConvertFrom-Json
            $body.briefDescription | Should Be 'Check backups'
            $body.status.id | Should Be 's1'
        }

        It "requests the newest vendor media type" {
            Get-TdPersonDetail -Id 'p1'
            $script:call.Headers['Accept'] | Should BeLike 'application/x.topdesk-*-v2+json'
        }
    }
}
