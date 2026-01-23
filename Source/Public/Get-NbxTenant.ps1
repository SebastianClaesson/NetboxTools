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
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/tenants/$($_)/" -Method GET
            }
        }
        'Default' {
        write-Verbose "Getting All tenants at $($script:NbxConfig.URI)/tenancy/tenants"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/tenants/" -Method GET
        }
    }

}
