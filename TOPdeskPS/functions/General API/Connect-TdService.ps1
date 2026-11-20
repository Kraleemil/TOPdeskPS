function Connect-TdService {
    <#
	.SYNOPSIS
		Prepares your session for TOPdeskPS

	.DESCRIPTION
		Prepares the authorization header that every other TOPdeskPS command uses.

		Recommended: use an application password (-ApplicationPassword). The credential's user name is your TOPdesk login name and the password is the application password you created in TOPdesk (My settings > Application passwords). TOPdeskPS then sends a Basic authorization header with every request.

		Without -ApplicationPassword this command requests a login token from /tas/api/login/<UserType> with your normal TOPdesk password. TOPdesk has deprecated the operator login endpoint in favour of application passwords, so a warning is written when it is used. It keeps working for now so existing scripts don't break.

	.PARAMETER Credential
		Credentials used to access TOPdesk.

	.PARAMETER UserType
		Specify whether you want to login as a person or an operator. Default value: operator

	.PARAMETER PassThru
		Passes the login token through to the console. Can be useful for troubleshooting or if you want to generate a login token to be consumed by a different application.

	.PARAMETER Url
		This is the Url of your TOPdesk instance. You can specify a custom port. Example: 'https://Company.TOPdesk.net' , 'http://10.1.2.3:90'

	.PARAMETER Register
		Saves your TOPdesk url so you don't need to manually specify it each time. For more information see about_TOPdeskPS_Registration

	.PARAMETER EnableException
        Specify whether you want this command to throw an exception if it encounters an error.

    .PARAMETER ApplicationPassword
        Specify whether you are supplying an application password credential rather than a TOPdesk credential. The credential still needs to be provided to the Credential parameter.

	.EXAMPLE
		PS C:\> Connect-TdService -Url 'https://company.topdesk.net' -Credential (Get-Credential) -ApplicationPassword

		Prompts you for your TOPdesk login name and application password and uses them for all following requests. This is the recommended way to connect.

	.EXAMPLE
		PS C:\> $password = Get-Secret -Name TOPdeskAppPassword   # SecretManagement, or ConvertTo-SecureString from a protected source
		PS C:\> $credential = [pscredential]::new('api-user', $password)
		PS C:\> Connect-TdService -Url 'https://company.topdesk.net' -Credential $credential -ApplicationPassword

		Connects without any prompt, for scripts and scheduled tasks. The user name is the TOPdesk login name of the operator who created the application password.

	.EXAMPLE
		PS C:\> Connect-TdService -Url 'https://company.topdesk.net' -Credential (Get-Credential)

		Prompts you for your TOPdesk credentials and requests a login token. Logging in as an operator this way is deprecated by TOPdesk; use -ApplicationPassword instead.

	.EXAMPLE
		PS C:\> Connect-TdService -Credential $Cred -Url 'https://company.topdesk.net:90' -Register -ApplicationPassword
        Generates a header that is specific to Application Passwords. The Url will be registered so you don't need to enter it the next time you run connect-tdservice. We will be using port 90.
#>

    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Connect-TdService')]
    [OutputType([System.String])]
    param
    (

        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [PSCredential]
        $Credential,

        [ValidateSet('person', 'operator')]
        $UserType = 'operator',

        [switch]
        $PassThru,

        #[PSFValidatePattern('http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?', ErrorMessage = '{0} is not a valid TOPdesk Url.')]
        [System.String]
        $Url = (
           Get-TdUrl),

        [switch]
        $Register,

        [Switch]
        $ApplicationPassword,

        [switch]
        $EnableException
    )
    Write-PSFMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level Debug
    Write-PSFMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -Level Debug
    $resourceUri = "$url/tas/api/login/$UserType"

    if ($ApplicationPassword) {
        Write-PSFMessage -Level Verbose -Message "Generating Basic header using applicationpassword."
        $Script:__LoginToken = "Basic $(ConvertTo-Base64 "$($Credential.username):$($Credential.GetNetworkCredential().password)")"
    }

    elseif (-not $ApplicationPassword) {
        if ($UserType -eq 'operator') {
            Write-PSFMessage -Level Warning -Message "Logging in with an operator password via /tas/api/login/operator is deprecated by TOPdesk. Create an application password in TOPdesk and use Connect-TdService -ApplicationPassword instead."
        }
        Write-PSFMessage "Sending login request to TOPdesk to generate token." -Level Verbose
        $headers = @{
            'Authorization' = "Basic $(ConvertTo-Base64 "$($Credential.username):$($Credential.GetNetworkCredential().password)")"
        }
        $params = @{
            URI = $resourceURi
            Method = "GET"
            Headers = $headers
        }
        $result = Invoke-RestMethod @params -ErrorAction Stop
        if ($result.item.name -like 'item') {
            Stop-PSFFunction -Message 'invalid url given.' -EnableException $EnableException -Cmdlet $PSCmdlet
            return
        }
        else {
            Write-PSFMessage -Level Verbose -Message 'LoginToken received and set.'
            $Script:__LoginToken = "TOKEN id=`"$result`""
        }
    }
    if ($PassThru) {
        $Script:__LoginToken
    }


    Set-PSFConfig -FullName TOPdeskPS.Url -Value $Url
    if ($Register) {
        Register-PSFConfig -FullName TOPdeskPS.Url
    }

    if (Test-PSFFunctionInterrupt) {
        return
    }
}
