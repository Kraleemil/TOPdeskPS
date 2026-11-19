function Get-TdOperator {
    <#
.SYNOPSIS
    returns list of operators
.DESCRIPTION
    Returns a list of operators (GET /tas/api/operators).

    The filter parameters are translated into a FIQL query. You can add your own FIQL with -Query; it is combined with the other filters using AND.
.PARAMETER ResultSize
	The amount of operators to be returned. Requests greater than 5000 require multiple api calls. Use [int]::MaxValue to return all operators.
.PARAMETER FirstName
    Retrieve only operators with first name starting with this.
    .PARAMETER LastName
        Retrieve only operators with last name starting with this.
    .PARAMETER Archived
        Also return archived operators. Without this switch only operators that are not archived are returned.
    .PARAMETER TOPdeskLoginName
        Retrieve only operators with TOPdesk login name starting with this.
    .PARAMETER Email
        Retrieve only operators with email starting with this.
	.PARAMETER Start
		This is the offset at which you want to start listing operators.
    .PARAMETER Query
        A FIQL expression to select operators, for example "(stockManager==true,operatorGroup.stockManager==true)". See https://developers.topdesk.com/tutorial.html#query
    .PARAMETER Fields
        Only include these fields in the response, for example 'id','dynamicName','email'.

.EXAMPLE
    PS C:\> Get-TdOperator
    returns list of operators
.EXAMPLE
    PS C:\> Get-TdOperator -Query 'operatorGroup.name==Servicedesk' -ResultSize ([int]::MaxValue)

    Returns all operators that are not archived and are member of the operator group Servicedesk.
#>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperator')]

    param
    (
        [Parameter(Position = 0)]
        [string]
        $TOPdeskLoginName,

        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $ResultSize = 100,

        [int]
        $Start = 0,

        [string]
        $Email,

        [switch]$Archived,

        [string]$LastName,

        [string]$FirstName,

        [string]$Query,

        [string[]]$Fields
    )
    process {
        Write-PsfMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level internalcomment
        Write-PSfMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -level internalcomment

        $conditions = [System.Collections.Generic.List[string]]::new()
        $startsWith = [ordered]@{ FirstName = 'firstName'; LastName = 'surName'; TOPdeskLoginName = 'loginName'; Email = 'email' }
        foreach ($name in $startsWith.Keys) {
            if ($PSBoundParameters.Keys -contains $name) { $conditions.Add((New-TdFiqlCondition -Field $startsWith[$name] -Operator '=sw=' -Value $PSBoundParameters[$name])) }
        }
        # With a FIQL query TOPdesk returns archived and non-archived operators, the old filters only returned non-archived ones.
        if (-not $Archived) { $conditions.Add('archived==false') }

        $parameter = [ordered]@{ query = (Join-TdFiql -Condition $conditions -Query $Query) }
        if ($Fields) { $parameter['fields'] = $Fields -join ',' }

        Invoke-TdPagedRequest -Uri "$(Get-TdUrl)/tas/api/operators" -Parameter $parameter -StartParameter 'start' -SizeParameter 'page_size' -MaxPageSize 5000 -ResultSize $ResultSize -Start $Start |
        Where-Object { $_.id } |
        Select-PSFObject -Typename 'TOPdeskPS.Operator' -KeepInputObject
    }
}
