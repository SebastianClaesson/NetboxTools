function Get-NbxVirtualMachine {

    <#
    .SYNOPSIS
        Obtains virtual machines from Netbox.

    .DESCRIPTION
        Obtains one or more virtual machines based on provided filters.

    .PARAMETER Id
        Database ID of the VM

    .EXAMPLE
        PS C:\> Get-NbxVirtualMachine

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding()]
    param
    (
        [uint64[]]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            Write-Verbose "Getting virtual machine with ID: $($_) at $($script:NbxConfig.URI)/virtualization/virtual-machines/$($_)/"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/virtual-machines/$($_)" -Method GET
        }
    }
    else {
        Write-Verbose "Getting All virtual machines at $($script:NbxConfig.URI)/virtualization/virtual-machines"
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/virtual-machines/?limit=9999" -Method GET
    }

}
