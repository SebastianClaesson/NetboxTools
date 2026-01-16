function Get-NbxDCIMInterfaceConnection {

    [CmdletBinding()]
    param ()

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/interface-connections/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET

}
