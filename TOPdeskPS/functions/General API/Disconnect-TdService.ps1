function Disconnect-TdService {
    <#
	.SYNOPSIS
		Disconnects you from the TOPdesk service and invalidates your login token.

	.DESCRIPTION
		Ends the TOPdeskPS session.
		- After Connect-TdService with a TOPdesk password, the login token is invalidated at TOPdesk (GET /tas/api/logout).
		- After Connect-TdService -ApplicationPassword there is no token to invalidate; the stored credentials are removed from the session.
		Either way the module forgets the credentials, so the next command needs Connect-TdService again.

	.EXAMPLE
		PS C:\> Disconnect-TdService
		Disconnects from TOPdesk and invalidates your token.
#>

    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Disconnect-TdService')]
    param ()

    begin {
        Write-PSFMessage -Level InternalComment -Message "Bound parameters: $($PSBoundParameters.Keys -join ", ")" -Tag 'debug', 'start', 'param'
        Write-PSFMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level InternalComment
    }
    process {
        if (-not $Script:__LoginToken) {
            Write-PSFMessage -Level Verbose -Message 'Not connected to TOPdesk.'
            return
        }
        try {
            # Application passwords are sent as a Basic header with every request; only a login token can be invalidated.
            if ($Script:__LoginToken -like 'TOKEN *') {
                $parameter = @{
                    URI = (Get-TdUrl) + '/tas/api/logout'
                    Method = 'GET'
                    Headers = @{ 'Authorization' = $Script:__LoginToken }
                }
                Invoke-RestMethod @parameter -ErrorAction Stop
            }
        }
        finally {
            $Script:__LoginToken = $null
        }
    }
    end {
        Write-PSFMessage -Level InternalComment 'Function complete.'
    }
}