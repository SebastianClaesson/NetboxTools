function Get-NbxDCIMDeviceType {

    [CmdletBinding()]
    param ()

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/device-types/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET

}
