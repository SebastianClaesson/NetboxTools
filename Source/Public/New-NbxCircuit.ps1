function New-NbxCircuit {

    <#
    .SYNOPSIS
        Create a new circuit in NetBox

    .DESCRIPTION
        Creates a new circuit object in NetBox

    .PARAMETER CID
        The circuit ID

    .PARAMETER Provider
        The provider ID

    .PARAMETER Type
        The circuit type ID

    .PARAMETER OptionalAttribute
        Hashtable of optional attributes
    #>

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
        cid      = $CID
        provider = $Provider
        type     = $Type
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
