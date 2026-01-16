function Get-NbxDCIMFrontPort {

    [CmdletBinding()]
    param ()

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/front-ports/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET

}
