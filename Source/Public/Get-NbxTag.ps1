function Get-NbxTag {

    [CmdletBinding()]
    param
    (
        [Parameter()]
        [uint64]$Id
    )

    Write-Verbose "Getting All tags at $($script:NbxConfig.URI)/extras/tags"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/extras/tags/?limit=9999" -Method GET
}
