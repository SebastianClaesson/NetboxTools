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

    [CmdletBinding()]
    param
    (
        [uint64[]]$Id
    )

    Write-Verbose "Getting All virtualization clusters at $($script:NbxConfig.URI)/virtualization/clusters"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/clusters/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET
}
