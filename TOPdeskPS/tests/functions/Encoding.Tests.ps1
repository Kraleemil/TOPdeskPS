. "$PSScriptRoot\TestHelpers.ps1"

Describe "UTF-8 handling (æ, ø, å and other non-ASCII text)" {
    InModuleScope TOPdeskPS {
        $script:__LoginToken = 'Basic dGVzdDp0ZXN0'
        Set-PSFConfig -FullName TOPdeskPS.Url -Value 'https://td.example'
        $danish = 'Søren Ærø – blåbærgrød, Müller, Zoë'

        Context "Requests" {
            It "sends a string body as UTF-8 bytes with charset=utf-8" {
                Mock Invoke-WebRequest { $script:sent = $Body; $script:contentType = $ContentType; New-TdFakeResponse -Empty }
                Invoke-TdMethod -Uri 'https://td.example/tas/api/x' -Method Post -Body (ConvertTo-Json @{ name = $danish })
                $script:sent.GetType().Name | Should Be 'Byte[]'
                $script:contentType | Should Be 'application/json; charset=utf-8'
                ([System.Text.Encoding]::UTF8.GetString($script:sent) | ConvertFrom-Json).name | Should Be $danish
                # "å" must be the two UTF-8 bytes C3 A5, not the single ISO-8859-1 byte E5.
                ($script:sent -join ',') | Should Match '(^|,)195,165(,|$)'
                ($script:sent -join ',') | Should Not Match '(^|,)229(,|$)'
            }
            It "keeps an explicit charset" {
                Mock Invoke-WebRequest { $script:contentType = $ContentType; New-TdFakeResponse -Empty }
                Invoke-TdMethod -Uri 'https://td.example/tas/api/x' -Method Post -Body '{}' -ContentType 'application/json; charset=utf-8'
                $script:contentType | Should Be 'application/json; charset=utf-8'
            }
            It "keeps the vendor media type of generated commands" {
                Mock Invoke-WebRequest { $script:sent = $Body; $script:contentType = $ContentType; New-TdFakeResponse -Empty }
                New-TdKnowledgeBaseItem -TranslationContentTitle 'Blåbærgrød' -Confirm:$false
                $script:contentType | Should Be 'application/x.topdesk-kb-create-ki-v1+json; charset=utf-8'
                ([System.Text.Encoding]::UTF8.GetString($script:sent) | ConvertFrom-Json).translation.content.title | Should Be 'Blåbærgrød'
            }
            It "encodes non-ASCII query values as UTF-8" {
                Mock Invoke-WebRequest { $script:uri = ([uri]$Uri).AbsoluteUri; New-TdFakeResponse @() }
                Get-TdPerson -FirstName 'Søren'
                $script:uri | Should Match 'firstName%3Dsw%3DS%C3%B8ren'
            }
        }

        Context "Responses" {
            It "decodes UTF-8 responses that have no charset" {
                Mock Invoke-WebRequest { New-TdFakeResponse ([pscustomobject]@{ name = $danish }) -ContentType 'application/x.topdesk-test-v1+json' }
                (Invoke-TdMethod -Uri 'https://td.example/tas/api/x').name | Should Be $danish
            }
            It "decodes responses with the charset from the header" {
                Mock Invoke-WebRequest { New-TdFakeResponse -Text '{"city":"Århus"}' -ContentType 'application/json; charset=ISO-8859-1' -Encoding ([System.Text.Encoding]::GetEncoding('iso-8859-1')) }
                (Invoke-TdMethod -Uri 'https://td.example/tas/api/x').city | Should Be 'Århus'
            }
            It "ignores a UTF-8 byte order mark" {
                $bom = [System.Text.UTF8Encoding]::new($true)
                Mock Invoke-WebRequest { [pscustomobject]@{ Headers = @{ 'Content-Type' = 'application/json' }; RawContentStream = [System.IO.MemoryStream]::new([byte[]]($bom.GetPreamble() + $bom.GetBytes('{"city":"Ærø"}'))) } }
                (Invoke-TdMethod -Uri 'https://td.example/tas/api/x').city | Should Be 'Ærø'
            }
            It "returns plain text responses as text" {
                Mock Invoke-WebRequest { New-TdFakeResponse -Text 'Hej Søren' -ContentType 'text/plain' }
                Invoke-TdMethod -Uri 'https://td.example/tas/api/x' | Should Be 'Hej Søren'
            }
            It "returns nothing for an empty response" {
                Mock Invoke-WebRequest { New-TdFakeResponse -Empty }
                Invoke-TdMethod -Uri 'https://td.example/tas/api/x' | Should BeNullOrEmpty
            }
        }

        Context "Uploads" {
            It "sends UTF-8 fields and file names and keeps the file bytes" {
                Mock Invoke-WebRequest { $script:sent = $Body; $script:contentType = $ContentType; New-TdFakeResponse -Empty }
                $file = Join-Path $TestDrive 'Kvittering æøå.bin'
                [System.IO.File]::WriteAllBytes($file, [byte[]](0..255))
                Invoke-TdMethod -Uri 'https://td.example/tas/api/x' -Method Post -File $file -Body ([pscustomobject]@{ description = 'Faktura fra Søren' })

                $script:contentType | Should BeLike 'multipart/form-data; boundary=*'
                $text = [System.Text.Encoding]::UTF8.GetString($script:sent)
                $text | Should Match 'filename="Kvittering æøå.bin"'
                $text | Should Match 'Faktura fra Søren'

                $latin1 = [System.Text.Encoding]::GetEncoding('iso-8859-1')
                $marker = $latin1.GetBytes("Content-Type: application/octet-stream`r`n`r`n")
                $raw = $latin1.GetString($script:sent)
                $start = $raw.IndexOf($latin1.GetString($marker)) + $marker.Length
                $content = $script:sent[$start..($start + 255)]
                ($content -join ',') | Should Be ((0..255) -join ',')
            }
            It "escapes quotes in file names" {
                $file = Join-Path $TestDrive 'a"b.txt'
                # Windows does not allow quotes in file names.
                if ([System.IO.Path]::GetInvalidFileNameChars() -contains [char]'"') { return }
                Set-Content -LiteralPath $file -Value 'x'
                $multipart = New-TdMultipartBody -File $file
                [System.Text.Encoding]::UTF8.GetString($multipart.Body) | Should Match 'filename="a%22b.txt"'
            }
        }

        Context "Credentials" {
            It "encodes user names and passwords as UTF-8" {
                ConvertTo-Base64 -InputObject 'brugér:pæssw0rd' | Should Be ([System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes('brugér:pæssw0rd')))
            }
            It "is unchanged for ASCII credentials" {
                ConvertTo-Base64 -InputObject 'user:password' | Should Be 'dXNlcjpwYXNzd29yZA=='
            }
        }

        Context "ConvertFrom-TdJson" {
            It "converts objects and arrays" {
                $result = ConvertFrom-TdJson -Json '[{"name":"Æble"},{"name":"Ørred"}]'
                ($result.name -join ',') | Should Be 'Æble,Ørred'
            }
        }
    }
}
