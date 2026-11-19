function Get-TdPerson {
    <#
    .SYNOPSIS
        Gets persons
    .DESCRIPTION
        Gets persons from GET /tas/api/persons.

        The filter parameters are translated into a FIQL query (the query parameter of the persons endpoint). The response keeps the same shape as before, so existing scripts keep working. You can add your own FIQL with -Query; it is combined with the other filters using AND.

        -MobileNumber has no FIQL equivalent ("ends with, ignoring spaces and dashes"). When you use it the command falls back to the old query parameters, and it can then not be combined with -Query or -Fields.

    .PARAMETER ResultSize
    The amount of persons to be returned. Requests greater than 5000 require multiple api calls. Use [int]::MaxValue to return all persons.

    .PARAMETER Start
		This is the offset at which you want to start listing persons.
		The default value is 0.
    .PARAMETER Archived
        Also return archived persons. Without this switch only persons that are not archived are returned.
    .PARAMETER FirstName
        Retrieve only persons with first name starting with this
    .PARAMETER LastName
        Retrieve only persons with last name starting with this
    .PARAMETER NetworkLoginName
        Retrieve only users with network login name starting with this. Parameter is ignored for SSP users.
    .PARAMETER SspLoginName
        Retrieve only persons with Self Service Portal name starting with this. Parameter is ignored for SSP users.
    .PARAMETER Email
        Retrieve only persons with email starting with this
    .PARAMETER MobileNumber
     Retrieve only persons with mobile number ending with this. Spaces and dashes are ignored. For example: 6-12345678 will match both +316 12345678 and 06 1234 5678
    .PARAMETER Query
        A FIQL expression to select persons, for example "department.name==IT;manager.name==Alice". It is combined with the other filters using AND. See https://developers.topdesk.com/tutorial.html#query
    .PARAMETER Fields
        Only include these fields in the response, for example 'id','dynamicName','email'.
    .EXAMPLE
        PS C:\> Get-TdPerson -FirstName 'Bob' -Archived

            Returns all persons with the firstname starting with Bob. This will also search archived persons.
    .EXAMPLE
        PS C:\> Get-TdPerson -Email 'User@company.com' | Format-List *

            Returns the person whose email starts with 'user@company.com' and displays all details of the result.
    .EXAMPLE
        PS C:\> Get-TdPerson -Query 'department.name==IT' -ResultSize ([int]::MaxValue)

            Returns all persons that are not archived in the IT department.

    #>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdPerson')]
    param (
        [system.string]$FirstName,
        [system.string]$Email,
        [Alias('Surname')]
        [system.string]$LastName,
        [system.string]$NetworkLoginName,
        [System.String]$SspLoginName,
        [system.string]$MobileNumber,
        [switch]$Archived,
        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $ResultSize = 100,
        [ValidateRange(0, [int]::MaxValue)]
        [int]$Start = 0,
        [string]$Query,
        [string[]]$Fields
    )
    Write-PSFMessage -Level InternalComment -Message "Bound parameters: $($PSBoundParameters.Keys -join ", ")"
    $uri = (Get-TdUrl) + '/tas/api/persons'
    $parameter = [ordered]@{}

    if ($PSBoundParameters.Keys -contains 'MobileNumber') {
        if ($Query -or $Fields) {
            Stop-PSFFunction -Message '-MobileNumber cannot be combined with -Query or -Fields because TOPdesk has no FIQL operator for it.' -EnableException $true -Cmdlet $PSCmdlet
        }
        Write-PSFMessage -Level Verbose -Message 'Using the legacy person filters because of -MobileNumber.'
        $legacy = [ordered]@{ FirstName = 'firstname'; LastName = 'lastname'; NetworkLoginName = 'network_login_name'; SspLoginName = 'ssp_login_name'; Email = 'email'; MobileNumber = 'mobile_number' }
        foreach ($name in $legacy.Keys) {
            if ($PSBoundParameters.Keys -contains $name) { $parameter[$legacy[$name]] = $PSBoundParameters[$name] }
        }
        if ($Archived) { $parameter['archived'] = $true }
    }
    else {
        $conditions = [System.Collections.Generic.List[string]]::new()
        $startsWith = [ordered]@{ FirstName = 'firstName'; LastName = 'surName'; NetworkLoginName = 'networkLoginName'; SspLoginName = 'tasLoginName'; Email = 'email' }
        foreach ($name in $startsWith.Keys) {
            if ($PSBoundParameters.Keys -contains $name) { $conditions.Add((New-TdFiqlCondition -Field $startsWith[$name] -Operator '=sw=' -Value $PSBoundParameters[$name])) }
        }
        # With a FIQL query TOPdesk returns archived and non-archived persons, the old filters only returned non-archived ones.
        if (-not $Archived) { $conditions.Add('archived==false') }
        $parameter['query'] = Join-TdFiql -Condition $conditions -Query $Query
        if ($Fields) { $parameter['$fields'] = $Fields -join ',' }
    }

    Invoke-TdPagedRequest -Uri $uri -Parameter $parameter -StartParameter 'start' -SizeParameter 'page_size' -MaxPageSize 5000 -ResultSize $ResultSize -Start $Start |
    Where-Object { $_.id } |
    Select-PSFObject -Typename 'TOPdeskPS.Person' -KeepInputObject
}
