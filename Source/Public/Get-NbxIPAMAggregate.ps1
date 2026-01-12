function Get-NbxIPAMAggregate {

    [CmdletBinding()]
    param
    (
        [Parameter()]
        [uint64[]]$Id
    )

    if ($Id) {
        $Id | ForEach-Object {
            Write-Verbose "Getting IPAM aggregate with ID: $($_) at $($script:NbxConfig.URI)/ipam/aggregates/$($_)/"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/aggregates/$($_)" -Method GET
        }
    }
    else {
        Write-Verbose "Getting All IPAM aggregates at $($script:NbxConfig.URI)/ipam/aggregates"
        InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/aggregates/?limit=9999" -Method GET
    }

}
