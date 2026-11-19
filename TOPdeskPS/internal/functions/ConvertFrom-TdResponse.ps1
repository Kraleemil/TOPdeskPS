function ConvertFrom-TdResponse {
    <#
    .SYNOPSIS
        Decodes a web response from TOPdesk.

    .DESCRIPTION
        Reads the raw bytes of an Invoke-WebRequest response and decodes them with the charset from the Content-Type header. When the header has no charset UTF-8 is used, which is what JSON requires (RFC 8259).
        This keeps characters like æ, ø, å, ü and é intact on every PowerShell version; Windows PowerShell 5.1 would otherwise decode such responses as ISO-8859-1.
        JSON is converted with ConvertFrom-TdJson, other content is returned as text. An empty response (for example 204 No Content) returns nothing.

    .PARAMETER Response
        The object returned by Invoke-WebRequest.

    .EXAMPLE
        PS C:\> Invoke-WebRequest -Uri $uri -UseBasicParsing | ConvertFrom-TdResponse

        Returns the decoded response.
    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/ConvertFrom-TdResponse')]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [AllowNull()]
        $Response
    )

    process {
        if ($null -eq $Response) { return }

        $bytes = $null
        if ($Response.RawContentStream) { $bytes = $Response.RawContentStream.ToArray() }
        elseif ($Response.Content -is [byte[]]) { $bytes = $Response.Content }
        if (-not $bytes -or $bytes.Length -eq 0) {
            if ($Response.Content -is [string]) { $text = $Response.Content } else { return }
        }

        $contentType = ''
        if ($Response.Headers) { $contentType = @($Response.Headers['Content-Type']) -join ';' }

        if ($bytes -and $bytes.Length -gt 0) {
            $encoding = [System.Text.UTF8Encoding]::new($false)
            if ($contentType -match 'charset\s*=\s*"?([^";\s]+)') {
                try { $encoding = [System.Text.Encoding]::GetEncoding($Matches[1]) }
                catch { Write-PSFMessage -Level Verbose -Message "Unknown charset $($Matches[1]), using UTF-8." }
            }
            $text = $encoding.GetString($bytes)
        }
        $text = $text.TrimStart([char]0xFEFF)
        if ([string]::IsNullOrWhiteSpace($text)) { return }

        $start = $text.TrimStart()
        if ($contentType -match 'json' -or $start.StartsWith('{') -or $start.StartsWith('[')) {
            ConvertFrom-TdJson -Json $text
        }
        else {
            $text
        }
    }
}
