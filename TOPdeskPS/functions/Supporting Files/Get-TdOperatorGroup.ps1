function Get-TdOperatorGroup {
    <#
.SYNOPSIS
    Returns operator groups
.DESCRIPTION
    returns list of operator groups or groups for a provided operator.
.PARAMETER NameFragment
   Retrieve only operator groups with name starting with this. No wildcards
.PARAMETER OperatorId
    Id of the operator that you want to return operator groups for.
.PARAMETER ResultSize
    The number of results that you want returned.
.PARAMETER Start
    The offset at which to start listing the operator groups at. Must be greater or equal to 0, default is 0
.PARAMETER Archived
    Specify whether you want archived operator groups included
.PARAMETER Query
    A FIQL expression to select operator groups, for example "stockManager==true". It is combined with the other filters using AND. See https://developers.topdesk.com/tutorial.html#query
.PARAMETER Fields
    Only include these fields in the response, for example 'id','groupName'.
.EXAMPLE
    PS > Get-TdOperatorGroup -resultsize 1000
    returns up to 1000 operator groups.

.Example
    PS > Get-TdOperator | Get-TdOperatorGroup
    Returns operator groups for operators
#>

    [CmdletBinding(HelpUri = 'https://andrewpla.github.io/TOPdeskPS/commands/TOPdeskPS/Get-TdOperatorGroup',
        DefaultParameterSetName = 'List')]
    param (
        [Parameter(Position = 0,
            ParameterSetName = 'List')]
        [string]$NameFragment,

        [Parameter(ValueFromPipelineByPropertyName, ParameterSetName = 'Operator')]
        [Alias('id')]
        $OperatorId,

        [Parameter(ParameterSetName = 'List')]
        [ValidateRange(1, [int]::MaxValue)]
        [int]
        $ResultSize = 100,

        [Parameter(ParameterSetName = 'List')]
        [switch]
        $Archived,

        [Parameter(ParameterSetName = 'List')]
        [int]
        $Start = 0,

        [Parameter(ParameterSetName = 'List')]
        [string]
        $Query,

        [Parameter(ParameterSetName = 'List')]
        [string[]]
        $Fields
    )

    process {
        Write-PsfMessage "ParameterSetName: $($PsCmdlet.ParameterSetName)" -level InternalComment
        Write-PSfMessage "PSBoundParameters: $($PSBoundParameters | Out-String)" -level InternalComment

        switch ($PsCmdlet.ParameterSetName) {
            Operator {
                $uri = "$(Get-TdUrl)/tas/api/operators/id/$OperatorId/operatorgroups"
                $res = Invoke-TdMethod -Uri $uri
                $res
            }

            List {
                $conditions = [System.Collections.Generic.List[string]]::new()
                if ($NameFragment) { $conditions.Add((New-TdFiqlCondition -Field 'name' -Operator '=sw=' -Value $NameFragment)) }
                # With a FIQL query TOPdesk returns archived and non-archived groups, the old filters only returned non-archived ones.
                if (-not $Archived) { $conditions.Add('archived==false') }
                $parameter = [ordered]@{ query = (Join-TdFiql -Condition $conditions -Query $Query) }
                if ($Fields) { $parameter['fields'] = $Fields -join ',' }

                Invoke-TdPagedRequest -Uri "$(Get-TdUrl)/tas/api/operatorgroups" -Parameter $parameter -StartParameter 'start' -SizeParameter 'page_size' -MaxPageSize 5000 -ResultSize $ResultSize -Start $Start |
                Where-Object { $_.id }
            }
        }
    }
}
