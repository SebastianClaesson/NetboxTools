function Get-NbxIPAMPrefix {

    <#
    .SYNOPSIS
        A brief description of the Get-NbxIPAMPrefix function.

    .DESCRIPTION
        A detailed description of the Get-NbxIPAMPrefix function.

    .PARAMETER Id
        A description of the Id parameter.

    .PARAMETER Query
        A hashtable containing all the parameters for a query string

    .EXAMPLE
        PS C:\> Get-NbxIPAMPrefix

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param
    (
        [Parameter(Mandatory, ParameterSetName = 'Id')]
        [uint64[]]
        $Id,

        [Parameter(Mandatory, ParameterSetName = 'Query')]
        [hashtable]
        $Query,

        [Parameter(ParameterSetName = 'Default')]
        [switch]
        $All
    )

    switch ($PSCmdlet.ParameterSetName) {
        'Id' {
            $Id | ForEach-Object {
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/$($_)/" -Method GET
            }
        }
        'Query' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/" -Method GET -Query $Query
        }
        'Default' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/" -Method GET
        }
    }
}
