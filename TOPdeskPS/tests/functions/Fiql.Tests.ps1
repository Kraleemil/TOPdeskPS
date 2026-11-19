Describe "FIQL and query string helpers" {
    InModuleScope TOPdeskPS {
        Context "ConvertTo-TdFiqlValue" {
            It "leaves simple values unquoted" {
                ConvertTo-TdFiqlValue -Value 'LAP1337' | Should Be 'LAP1337'
            }
            It "quotes values with white space or reserved characters" {
                ConvertTo-TdFiqlValue -Value 'LAP 0001' | Should Be '"LAP 0001"'
                ConvertTo-TdFiqlValue -Value 'a;b' | Should Be '"a;b"'
                ConvertTo-TdFiqlValue -Value 'a=b' | Should Be '"a=b"'
            }
            It "escapes backslashes and double quotes inside quoted values" {
                ConvertTo-TdFiqlValue -Value 'say "hi" \ bye' | Should Be '"say \"hi\" \\ bye"'
            }
            It "formats booleans, switches and null" {
                ConvertTo-TdFiqlValue -Value $true | Should Be 'true'
                ConvertTo-TdFiqlValue -Value ([switch]$false) | Should Be 'false'
                ConvertTo-TdFiqlValue -Value $null | Should Be 'null'
            }
            It "formats dates as ISO 8601 with offset" {
                $date = [datetimeoffset]::new(2024, 5, 1, 13, 14, 15, [timespan]::FromHours(2))
                ConvertTo-TdFiqlValue -Value $date | Should Be '2024-05-01T13:14:15+02:00'
            }
        }

        Context "New-TdFiqlCondition" {
            It "builds an equals condition" {
                New-TdFiqlCondition -Field 'closed' -Value $false | Should Be 'closed==false'
            }
            It "turns several values into =in=" {
                New-TdFiqlCondition -Field 'operator.id' -Value 'a', 'b' | Should Be 'operator.id=in=(a,b)'
            }
            It "turns several values with != into =out=" {
                New-TdFiqlCondition -Field 'status' -Operator '!=' -Value 'a', 'b' | Should Be 'status=out=(a,b)'
            }
            It "supports the other operators" {
                New-TdFiqlCondition -Field 'firstName' -Operator '=sw=' -Value 'Bo' | Should Be 'firstName=sw=Bo'
            }
        }

        Context "Join-TdFiql" {
            It "joins conditions with ;" {
                Join-TdFiql -Condition 'a==1', '', 'b==2' | Should Be 'a==1;b==2'
            }
            It "wraps a user query in brackets when combined" {
                Join-TdFiql -Condition 'a==1' -Query 'b==2,c==3' | Should Be 'a==1;(b==2,c==3)'
            }
            It "returns the user query alone when there are no conditions" {
                Join-TdFiql -Condition @() -Query 'b==2,c==3' | Should Be 'b==2,c==3'
            }
            It "returns an empty string when there is nothing" {
                Join-TdFiql -Condition @() | Should Be ''
            }
        }

        Context "ConvertTo-TdQueryString" {
            It "encodes values and repeats arrays" {
                ConvertTo-TdQueryString -Parameter ([ordered]@{ query = 'a==1;b=in=(x,y)'; id = 'a', 'b'; skip = $null; all = $true }) |
                Should Be 'query=a%3D%3D1%3Bb%3Din%3D%28x%2Cy%29&id=a&id=b&all=true'
            }
        }
    }
}
