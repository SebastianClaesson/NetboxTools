function Remove-NbxIPAMPrefix {

    <#
    .SYNOPSIS
        Remove an IPAM prefix from NetBox

    .DESCRIPTION
        Removes/deletes an IPAM prefix from NetBox by ID

    .PARAMETER Id
        Database ID of the IPAM prefix object.

    .EXAMPLE
        PS C:\> Remove-NbxIPAMPrefix -Id $value1

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
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/$($_)/" -Method DELETE
    }
}