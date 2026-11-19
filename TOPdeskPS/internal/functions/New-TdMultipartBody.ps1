function New-TdMultipartBody {
    <#
    .SYNOPSIS
        Builds a multipart/form-data request body for a file upload.

    .DESCRIPTION
        Builds the body as bytes, so it works the same on Windows PowerShell 5.1 and PowerShell 7:
        - Text fields and the file name are written as UTF-8, so æ, ø, å and other non-ASCII characters arrive intact.
        - The file content is copied byte for byte.
        - The file name is written the way browsers send it (UTF-8 inside the quotes).
        Returns an object with Body (byte array) and ContentType (including the boundary).

    .PARAMETER File
        The file to upload.

    .PARAMETER Field
        Additional form fields, as a PSCustomObject or hashtable. Values are converted to text.

    .PARAMETER FileFieldName
        Name of the form field that holds the file. Default is file.

    .PARAMETER FileContentType
        Content type of the file part. Detected from the file extension when not given.

    .EXAMPLE
        PS C:\> New-TdMultipartBody -File .\Kvittering.pdf -Field @{ description = 'Kvittering for æbler' }

        Returns the body and content type for uploading Kvittering.pdf with a description.
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [System.IO.FileInfo]
        $File,

        $Field,

        [string]
        $FileFieldName = 'file',

        [string]
        $FileContentType
    )

    $utf8 = [System.Text.UTF8Encoding]::new($false)
    $boundary = '----TOPdeskPS{0}' -f [guid]::NewGuid().ToString('N')
    $stream = [System.IO.MemoryStream]::new()
    $writeText = {
        param ([string]$Text)
        $data = $utf8.GetBytes($Text)
        $stream.Write($data, 0, $data.Length)
    }
    # Quotes and line breaks would break the Content-Disposition header.
    $escape = { param ([string]$Text) $Text.Replace('"', '%22').Replace("`r", '').Replace("`n", '') }

    $pairs = @()
    if ($Field -is [System.Collections.IDictionary]) {
        $pairs = foreach ($key in $Field.Keys) { [pscustomobject]@{ Name = "$key"; Value = $Field[$key] } }
    }
    elseif ($null -ne $Field) {
        $pairs = foreach ($property in $Field.PSObject.Properties | Where-Object MemberType -EQ 'NoteProperty') {
            [pscustomobject]@{ Name = $property.Name; Value = $property.Value }
        }
    }
    foreach ($pair in $pairs) {
        if ($null -eq $pair.Value) { continue }
        $value = if ($pair.Value -is [bool]) { $pair.Value.ToString().ToLower() } else { "$($pair.Value)" }
        & $writeText ("--{0}`r`nContent-Disposition: form-data; name=`"{1}`"`r`nContent-Type: text/plain; charset=utf-8`r`n`r`n{2}`r`n" -f $boundary, (& $escape $pair.Name), $value)
    }

    if (-not $FileContentType) {
        $FileContentType = 'application/octet-stream'
        if ('System.Web.MimeMapping' -as [type]) {
            $FileContentType = [System.Web.MimeMapping]::GetMimeMapping($File.Name)
        }
        else {
            $known = @{
                '.txt' = 'text/plain'; '.log' = 'text/plain'; '.csv' = 'text/csv'; '.htm' = 'text/html'; '.html' = 'text/html'
                '.xml' = 'application/xml'; '.json' = 'application/json'; '.pdf' = 'application/pdf'; '.zip' = 'application/zip'
                '.png' = 'image/png'; '.jpg' = 'image/jpeg'; '.jpeg' = 'image/jpeg'; '.gif' = 'image/gif'; '.bmp' = 'image/bmp'
                '.svg' = 'image/svg+xml'; '.msg' = 'application/vnd.ms-outlook'; '.eml' = 'message/rfc822'
                '.doc' = 'application/msword'; '.docx' = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
                '.xls' = 'application/vnd.ms-excel'; '.xlsx' = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
                '.ppt' = 'application/vnd.ms-powerpoint'; '.pptx' = 'application/vnd.openxmlformats-officedocument.presentationml.presentation'
            }
            if ($known.ContainsKey($File.Extension.ToLower())) { $FileContentType = $known[$File.Extension.ToLower()] }
        }
    }

    & $writeText ("--{0}`r`nContent-Disposition: form-data; name=`"{1}`"; filename=`"{2}`"`r`nContent-Type: {3}`r`n`r`n" -f $boundary, (& $escape $FileFieldName), (& $escape $File.Name), $FileContentType)
    $content = [System.IO.File]::ReadAllBytes($File.FullName)
    $stream.Write($content, 0, $content.Length)
    & $writeText ("`r`n--{0}--`r`n" -f $boundary)

    [pscustomobject]@{
        Body = $stream.ToArray()
        ContentType = "multipart/form-data; boundary=$boundary"
    }
}
