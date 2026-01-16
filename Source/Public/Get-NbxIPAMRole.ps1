function Get-NbxIPAMRole {

    <#
    .SYNOPSIS
        Get IPAM Prefix/VLAN roles

    .DESCRIPTION
        A role indicates the function of a prefix or VLAN. For example, you might define Data, Voice, and Security roles. Generally, a prefix will be assigned the same functional role as the VLAN to which it is assigned (if any).

    .PARAMETER Id
        Unique ID

    .EXAMPLE
        PS C:\> Get-NbxIPAMRole

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding()]
    param
    (
        [Parameter()]
        [uint64[]]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            Write-Verbose "Getting IPAM Role with ID: $($_) at $($script:NbxConfig.URI)/ipam/roles/$($_)/"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/roles/$($_)/" -Method GET
        }
    }
    else {
        Write-Verbose "Getting All IPAM Roles at $($script:NbxConfig.URI)/ipam/roles"
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/roles/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET
    }
}
