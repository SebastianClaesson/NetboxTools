function Get-NbxVirtualizationCluster {

    <#
    .SYNOPSIS
        Obtains virtualization clusters from NetBox.

    .DESCRIPTION
        Obtains one or more virtualization clusters based on provided filters.
   .PARAMETER Id
        Database ID(s) of the cluster

    .EXAMPLE
        PS C:\> Get-NbxVirtualizationCluster

    .NOTES
        Additional information about the function.
#>

[CmdletBinding(DefaultParameterSetName = 'Default')]
    param
    (
        [Parameter(Mandatory, ParameterSetName = 'Id')]
        [uint64[]]
        $Id,

        [Parameter(ParameterSetName = 'Default')]
        [switch]
        $All
    )

    switch ($PSCmdlet.ParameterSetName) {
        'Id' {
            $Id | ForEach-Object {
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/clusters/$($_)/" -Method GET
            }
        }
        'Default' {
        write-Verbose "Getting All clusters at $($script:NbxConfig.URI)/virtualization/clusters"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/clusters/" -Method GET
        }
    }

}