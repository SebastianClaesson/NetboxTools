function Get-NbxContactRole {

<#
    .SYNOPSIS
        Get a contact role from NetBox

    .DESCRIPTION
        A detailed description of the Get-NbxContactRole function.

    .PARAMETER Name
        The specific name of the contact role. Must match exactly as is defined in Netbox

    .PARAMETER Id
        The database ID of the contact role

    .EXAMPLE
        PS C:\> Get-NbxContactRole

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
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contact-roles/$($_)/" -Method GET
            }
        }
        'Query' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contact-roles/" -Method GET -Query $Query
        }
        'Default' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contact-roles/" -Method GET
        }
    }

}
