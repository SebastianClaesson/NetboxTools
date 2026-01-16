function Get-NbxDCIMInterface {

    [CmdletBinding()]
    param ()

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/interfaces/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET

}
