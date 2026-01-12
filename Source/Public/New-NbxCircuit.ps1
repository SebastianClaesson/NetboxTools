function New-NbxCircuit {

    [CmdletBinding(ConfirmImpact = 'Low',
        SupportsShouldProcess = $true)]
    [OutputType([pscustomobject])]
    param
    (
        [Parameter(Mandatory,
            ValueFromPipelineByPropertyName = $true)]
        [string]$CID,

        [Parameter(Mandatory)]
        [uint64]$Provider,

        [Parameter(Mandatory)]
        [uint64]$Type,

        #[ValidateSet('Active', 'Planned', 'Provisioning', 'Offline', 'Deprovisioning', 'Decommissioned ')]
        [uint16]$Status = 'Active',

        [string]$Description,

        [uint64]$Tenant,

        [string]$Termination_A,

        [datetime]$Install_Date,

        [string]$Termination_Z,

        [ValidateRange(0, 2147483647)]
        [uint64]$Commit_Rate,

        [string]$Comments,

        [hashtable]$Custom_Fields,

        [switch]$Force,

        [switch]$Raw
    )

    $Body = @{
    
    }

    $Json = $Body | ConvertTo-Json -Depth 100

    Write-Verbose "Creating a new circuit at $($script:NbxConfig.URI)/circuits/circuits"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/circuits" -Method POST -Body $Json

}
