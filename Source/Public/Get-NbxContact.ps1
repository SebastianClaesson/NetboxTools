function Get-NbxContact {

    <#
    .SYNOPSIS
        Get a contact from NetBox

    .DESCRIPTION
        Obtain a contact or contacts from NetBox by ID or query

    .PARAMETER Name
        The specific name of the Contact. Must match exactly as is defined in Netbox

    .PARAMETER Id
        The database ID of the Contact

    .EXAMPLE
        PS C:\> Get-NbxContact

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
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contacts/$($_)/" -Method GET
            }
        }
        'Query' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contacts/" -Method GET -Query $Query
        }
        'Default' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contacts/" -Method GET
        }
    }

}
