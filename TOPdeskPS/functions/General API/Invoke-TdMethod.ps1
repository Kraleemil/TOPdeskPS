function Invoke-TdMethod {
    <#
	.SYNOPSIS
		Sends a request to the TOPdesk API. This command is exposed in case you encounter api calls that aren't part of this module. All api commands call this command to perform the web request.

	.DESCRIPTION
		Sends a request to the TOPdesk API with the authorization header created by Connect-TdService and returns the response as objects.

		Text is always sent and read as UTF-8, so characters like æ, ø, å, ü and é work on Windows PowerShell 5.1 as well as PowerShell 7:
		- A string body is sent as UTF-8 bytes and the content type gets charset=utf-8.
		- Responses are decoded with the charset TOPdesk sends, or UTF-8 when it sends none.
		- File uploads are sent as multipart/form-data with UTF-8 field values and file names.

	.PARAMETER ContentType
		The content type of the body. Default is application/json; charset=utf-8 is added for text bodies. Together with -File it is the content type of the uploaded file (detected from the extension when not given).

	.PARAMETER Uri
		the uri that you are targeting

	.PARAMETER Body
		The body of the request to be sent to TOPdesk. Accepts a PSCustomObject. If you also specify a file we will convert the body into a multipart/form request.

	.PARAMETER Method
		The method that you want to pass

	.PARAMETER Token
        Custom Api token if you want to avoid using Connect-TdService ex:'TOKEN id="Token id="Base64encodedToken

    .PARAMETER Accept
        Value for the Accept header. Some TOPdesk endpoints need a versioned media type, for example application/x.topdesk-collection-person-v2+json. When not specified no Accept header is sent.

    .PARAMETER OutFile
        Saves the response body to this file instead of returning it. Used for downloading attachments, images and avatars.

    .PARAMETER File
    Path to the file that you want to upload. The request is sent as multipart/form-data with the file in the field "file"; the properties of -Body are added as extra form fields.

	.EXAMPLE
		PS C:\> Invoke-TdMethod -Token $Token -Body $Body
		Sends a Get request to your TOPdesk instance.

#>

    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Invoke-TdMethod')]
    param
    (

        [Parameter(Mandatory, Position = 0)]
        [uri]
        $Uri,

        [string]
        $ContentType = 'application/json' ,

        [pscustomobject]
        $Body,

        [ValidateSet('Get', 'Set', 'Put', 'Patch', 'Delete', 'Post', 'Head', 'Merge', 'Options')]
        [string]
        $Method = 'Get',

        [string]
        $Token,

        [string]
        $Accept,

        [string]
        $OutFile,

        [Parameter(ParameterSetName = 'File')]
        [Alias('InFile')]
        [ValidateScript( {
                if (-Not ($_ | Test-Path)) {
                    throw "File or folder does not exist"
                }
                if (-Not ($_ | Test-Path -PathType Leaf)) {
                    throw "The Path argument must be a file. Folder paths are not allowed."
                }
                if (-Not (Get-Item $_)) {
                    throw "Cannot find path $($_)"
                }
                return $true
            })]
        [system.io.fileinfo]
        $File
    )

    process {
        Write-PsfMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level InternalComment
        Write-PSfMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -level InternalComment

        if ($Token) {
            $Headers = @{
                'Authorization' = $Token
            }
        }
        else {
            if (-not $Script:__LoginToken) {
                throw 'no connection to topdesk, try running Connect-TdService'
            }
            else {
                $Headers = @{
                    'Authorization' = $Script:__LoginToken
                }
            }
        }

        if ($Accept) {
            $Headers['Accept'] = $Accept
        }

        if ($PSCmdlet.ParameterSetName -eq 'File') {
            # Build the multipart body as bytes: UTF-8 for text fields and the file name, the file content unchanged.
            $multipartParams = @{ File = $File; Field = $Body }
            if ($PSBoundParameters.ContainsKey('ContentType')) { $multipartParams['FileContentType'] = $ContentType }
            $multipart = New-TdMultipartBody @multipartParams
            $Params = @{
                Uri = $Uri
                Method = $Method
                Headers = $Headers
                Body = $multipart.Body
                ContentType = $multipart.ContentType
            }
        }
        else {
            $Params = @{
                Method = $Method
                Uri = $Uri
                Headers = $Headers
            }
            if ($null -ne $Body) {
                $rawBody = $Body.PSObject.BaseObject
                if ($rawBody -is [string]) {
                    # Send text as UTF-8 bytes. Windows PowerShell would otherwise encode it as ISO-8859-1 and break æ, ø, å and other characters.
                    $Params['Body'] = [System.Text.UTF8Encoding]::new($false).GetBytes($rawBody)
                    if ($ContentType -and $ContentType -notmatch 'charset=') { $ContentType = "$ContentType; charset=utf-8" }
                }
                else {
                    $Params['Body'] = $Body
                }
            }
            if ($ContentType) {
                $Params['ContentType'] = $ContentType
            }
        }

        Write-PSFMessage -Level InternalComment -Message "Params to be passed to the web request: $($Params.Keys -join ",")"
        if ($OutFile) {
            Invoke-RestMethod @Params -OutFile $OutFile
            return
        }
        # Read the raw response and decode it ourselves, so the charset is right on every PowerShell version.
        Invoke-WebRequest @Params -UseBasicParsing | ConvertFrom-TdResponse
    }
}

