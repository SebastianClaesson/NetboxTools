function Get-NbxVirtualizationClusterGroup {

    [CmdletBinding()]
    param
    (
        [uint64[]]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            Write-Verbose "Getting virtualization cluster group with ID: $($_) at $($script:NbxConfig.URI)/virtualization/cluster-groups/$($_)/"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/cluster-groups/$($_)/" -Method GET
        }
    }
    else {
        Write-Verbose "Getting All virtualization cluster groups at $($script:NbxConfig.URI)/virtualization/cluster-groups"
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/cluster-groups/?limit=9999" -Method GET
    }

}
