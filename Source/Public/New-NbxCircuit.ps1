function New-NbxCircuit {

    [CmdletBinding(ConfirmImpact = 'Low',
        SupportsShouldProcess = $true)]
    [OutputType([pscustomobject])]
    param
    (
        [Parameter(Mandatory)]
        [string]$CID,

        [Parameter(Mandatory)]
        [uint64]$Provider,

        [Parameter(Mandatory)]
        [uint64]$Type,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        cid            = $CID
        provider       = $Provider
        type           = $Type
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new circuit at $($script:NbxConfig.URI)/circuits/circuits"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/circuits/circuits/" -Method POST -Body $Json

}
