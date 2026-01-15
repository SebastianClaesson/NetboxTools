function Get-NbxVirtualMachineInterface {

    <#
    .SYNOPSIS
        Gets VM interfaces

    .DESCRIPTION
        Obtains the interface objects for one or more VMs
    .PARAMETER Id
        Database ID of the interface

    .EXAMPLE
        PS C:\> Get-NbxVirtualMachineInterface

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding()]
    param
    (
        [Parameter(ValueFromPipeline = $true)]
        [uint64]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            Write-Verbose "Getting interface with ID: $($_) at $($script:NbxConfig.URI)/virtualization/interfaces/$($_)/"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/interfaces/$($_)/" -Method GET
        }
    }
    else {
        Write-Verbose "Getting All interfaces at $($script:NbxConfig.URI)/virtualization/interfaces"
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/interfaces/?limit=9999" -Method GET
    }

}
