# Shared helpers for the function tests. Dot-source this file at the top of a test file.

function global:New-TdFakeResponse {
    <#
    .SYNOPSIS
        Returns an object that looks like the result of Invoke-WebRequest.
    .DESCRIPTION
        The response body is the JSON of InputObject (or Text), encoded with Encoding, so ConvertFrom-TdResponse can decode it like a real response.
    .PARAMETER InputObject
        Object that is converted to JSON and used as response body.
    .PARAMETER Text
        Raw response text, used instead of InputObject.
    .PARAMETER Empty
        Return an empty body, like a 204 No Content response.
    .PARAMETER ContentType
        Value of the Content-Type response header.
    .PARAMETER Encoding
        Encoding used to turn the text into bytes. Default is UTF-8.
    .EXAMPLE
        PS C:\> New-TdFakeResponse @([pscustomobject]@{ id = 1 })

        Returns a fake response with the body [{"id":1}].
    #>
    [CmdletBinding()]
    param (
        [Parameter(Position = 0)]
        $InputObject,

        [string]
        $Text,

        [switch]
        $Empty,

        [string]
        $ContentType = 'application/json',

        [System.Text.Encoding]
        $Encoding = [System.Text.UTF8Encoding]::new($false)
    )
    if ($Empty) { $Text = '' }
    elseif (-not $PSBoundParameters.ContainsKey('Text')) { $Text = ConvertTo-Json -InputObject $InputObject -Depth 10 }
    [pscustomobject]@{
        StatusCode = if ($Empty) { 204 } else { 200 }
        Headers = @{ 'Content-Type' = $ContentType }
        RawContentStream = [System.IO.MemoryStream]::new($Encoding.GetBytes($Text))
    }
}

function global:ConvertFrom-TdRequestBody {
    <#
    .SYNOPSIS
        Turns a request body captured by a mock back into text.
    .DESCRIPTION
        Invoke-TdMethod sends text as UTF-8 bytes; this decodes them so tests can inspect the JSON.
    .PARAMETER Body
        The body passed to Invoke-WebRequest.
    .EXAMPLE
        PS C:\> ConvertFrom-TdRequestBody -Body $Body

        Returns the body as a string.
    #>
    [CmdletBinding()]
    param (
        $Body
    )
    if ($Body -is [byte[]]) { [System.Text.Encoding]::UTF8.GetString($Body) } else { $Body }
}
