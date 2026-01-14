function Get-NbxVersion {

    [CmdletBinding()]
    param ()

    Write-Verbose "Getting Netbox status information at $($script:NbxConfig.URI)/status"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/status/" -Method GET
}