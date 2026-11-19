function ConvertTo-TdUrlValue {
    <#
    .SYNOPSIS
        URL-encodes a value the same way on every PowerShell version.

    .DESCRIPTION
        Encodes a value for use in a url path segment or query string, as UTF-8 per RFC 3986: only letters, digits and - _ . ~ stay as they are.
        [uri]::EscapeDataString on .NET Framework (Windows PowerShell 5.1) leaves ( ) ! * ' unescaped while .NET (PowerShell 7) escapes them; this function escapes them everywhere, so the module sends identical urls on both.

    .PARAMETER Value
        The value to encode.

    .EXAMPLE
        PS C:\> ConvertTo-TdUrlValue -Value 'status=in=(a,b)'

        Returns status%3Din%3D%28a%2Cb%29
    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/ConvertTo-TdUrlValue')]
    [OutputType([string])]
    param (
        [AllowEmptyString()]
        [string]
        $Value
    )

    [uri]::EscapeDataString($Value).Replace('(', '%28').Replace(')', '%29').Replace('!', '%21').Replace('*', '%2A').Replace("'", '%27')
}
