function Get-TdSupplierContact {
    <#
.SYNOPSIS
    Gets list of supplier  contacts
.DESCRIPTION
    Returns list of supplier contacts (GET /tas/api/supplierContacts).

    When -SupplierId or -Query is used the request is sent as a FIQL query: -SupplierId becomes supplier.id, -Name becomes dynamicName=sw= and archived contacts are left out unless -Archived is used. Otherwise the old filter parameters are sent.
.PARAMETER Name
retrieve only supplier contacts with names starting with this string
.PARAMETER Archived
    Whether to retrieve archived supplier contacts.
.PARAMETER PageSize
    The amount of supplier contacts to be returned. The default value is 10 and the maximum value is 10000.
.PARAMETER Query
    A FIQL expression to select supplier contacts, for example "supplier.forFirstLine==true". See https://developers.topdesk.com/tutorial.html#query
.PARAMETER Start
    This is the offset at which you want to start listing suppliers at.
    The default value is 0.
.PARAMETER SupplierId
    ID of the Supplier. See Get-TdSupplier
.EXAMPLE
    PS C:\> Get-TdSuppliercontact
    Returns list of supplier contacts
.EXAMPLE
    PS C:\> Get-TdSupplier -Name 'Sample Supplier' | Get-TdSupplierContact
    Returns list of Supplier contracts from supplier 'Sample Supplier'
#>
    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdSupplierContact')]

    param
    (
        [Parameter(
            ValueFromPipelineByPropertyName
        )]
        [Alias('Id')]
        $SupplierId,

        [ValidateRange(1, 10000)]
        [int]
        $PageSize = 10,

        [int]
        $Start = 0,

        [switch]
        $Archived,

        [system.string]
        $Name,

        [string]
        $Query
    )
    begin {
        Write-PsfMessage "[$($MyInvocation.MyCommand.Name)] Function started" -level verbose
    }

    process {
        Write-PsfMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level internalcomment
        Write-PSfMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -level internalcomment
        $uri = (Get-TdUrl) + "/tas/api/supplierContacts"
        $parameter = [ordered]@{ start = $Start; page_size = $PageSize }
        if ($SupplierId -or $Query) {
            $conditions = [System.Collections.Generic.List[string]]::new()
            if ($SupplierId) { $conditions.Add((New-TdFiqlCondition -Field 'supplier.id' -Value $SupplierId)) }
            if ($Name) { $conditions.Add((New-TdFiqlCondition -Field 'dynamicName' -Operator '=sw=' -Value $Name)) }
            if ($PSBoundParameters.keys -contains 'Archived') { $conditions.Add((New-TdFiqlCondition -Field 'archived' -Value $Archived.IsPresent)) }
            else { $conditions.Add('archived==false') }
            $parameter['query'] = Join-TdFiql -Condition $conditions -Query $Query
        }
        else {
            if ($PSBoundParameters.keys -contains 'Name') { $parameter['name'] = $Name }
            if ($PSBoundParameters.keys -contains 'Archived') { $parameter['archived'] = $Archived.IsPresent }
        }
        Invoke-TdMethod -Uri "$uri`?$(ConvertTo-TdQueryString -Parameter $parameter)"
    }
    end {
        Write-PSFMessage "Function Complete" -level verbose
    }
}

