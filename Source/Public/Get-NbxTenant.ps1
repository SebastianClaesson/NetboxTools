function Get-NbxTenant {

    <#
    .SYNOPSIS
        Get a tenant from NetBox

    .DESCRIPTION
        A detailed description of the Get-NbxTenant function.

    .PARAMETER Id
        The database ID of the tenant

    .EXAMPLE
        PS C:\> Get-NbxTenant

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
            Write-Verbose "Getting tenant with ID: $($_) at $($script:NbxConfig.URI)/tenancy/tenants/$($_)/"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/tenants/$($_)/" -Method GET
        }
    }
    else {
        Write-Verbose "Getting All tenants at $($script:NbxConfig.URI)/tenancy/tenants"
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/tenants/?limit=9999" -Method GET
    }

}
