function Get-NbxDCIMPlatform {

    [CmdletBinding()]
    param
    (
        [Parameter()]
        [uint64[]]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/platforms/$($_)/" -Method GET
        }
    }
    else {
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/platforms/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET
    }

}
