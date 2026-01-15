function Remove-NbxIPAMAddress {

    <#
    .SYNOPSIS
        Remove an IP address from NetBox

    .DESCRIPTION
        Removes/deletes an IP address from NetBox by ID and optional other filters

    .PARAMETER Id
        Database ID of the IP address object.

    .EXAMPLE
        PS C:\> Remove-NbxIPAMAddress -Id $value1

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [uint64[]]$Id
    )

    $Id | ForEach-Object {
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/ip-addresses/$($_)/" -Method DELETE
    }

}
