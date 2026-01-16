function Get-NbxIPAMVLAN {
    [CmdletBinding()]
    param
    (
        [Parameter()]
        [uint64[]]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            Write-Verbose "Getting IPAM VLAN with ID: $($_) at $($script:NbxConfig.URI)/ipam/vlans/$($_)/"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/vlans/$($_)/" -Method GET
        }
    }
    else {
        Write-Verbose "Getting All VLANs at $($script:NbxConfig.URI)/ipam/vlans"
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/vlans/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET
    }

}
