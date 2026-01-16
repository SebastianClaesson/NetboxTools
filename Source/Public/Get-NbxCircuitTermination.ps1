function Get-NbxCircuitTermination {

    [CmdletBinding()]
    param
    (
        [Parameter()]
        [uint64[]]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/circuits/circuit-terminations/$($_)/" -Method GET
        }
    }
    else {
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/circuits/circuit-terminations/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET
    }

}
