function Get-NbxDCIMRearPort {

    [CmdletBinding()]
    [OutputType([pscustomobject])]
    param ()

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/rear-ports/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET
    
}
