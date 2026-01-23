function Get-NbxCircuit {

    <#
    .SYNOPSIS
        Gets one or more circuits

    .DESCRIPTION
        A detailed description of the Get-NbxCircuit function.

    .PARAMETER Id
        Database ID of circuit. This will query for exactly the IDs provided

    .EXAMPLE
        PS C:\> Get-NbxCircuit

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
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/circuits/circuits/$($_)/" -Method GET
            }
        }
        'Query' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/circuits/circuits/" -Method GET -Query $Query
        }
        'Default' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/circuits/circuits/" -Method GET
        }
    }
}

