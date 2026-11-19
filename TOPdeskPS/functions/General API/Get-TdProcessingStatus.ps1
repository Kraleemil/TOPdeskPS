function Get-TdProcessingStatus {
    <#
    .SYNOPSIS
        Gets processing statuses
    .DESCRIPTION
        Gets the list of incident processing statuses (GET /tas/api/incidents/statuses).
        The endpoint /tas/api/incidents/processing_status that older versions of this command used is no longer part of the TOPdesk Incident API.
    .PARAMETER Name
        Name of the processing status that you want returned. Wildcards are supported. Default value is '*'
    .EXAMPLE
        PS C:\> Get-TdProcessingStatus
        Gets list of all processing statuses

    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdProcessingStatus')]
    param (
        [string]$Name = '*'
    )
    $uri = (Get-TdUrl) + '/tas/api/incidents/statuses'
    $Params = @{
        'uri' = $uri
    }
    $res = Invoke-TdMethod @Params
    $res | Where-Object name -like $Name
}
