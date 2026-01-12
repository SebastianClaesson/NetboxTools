function Set-NbxIPAMPrefix {

    [CmdletBinding(ConfirmImpact = 'Medium',
        SupportsShouldProcess = $true)]
    param
    (
        [Parameter(Mandatory,
            ValueFromPipelineByPropertyName = $true)]
        [uint64[]]$Id,

        [string]$Prefix,

        [string]$Status,

        [uint64]$Tenant,

        [uint64]$Site,

        [uint64]$VRF,

        [uint64]$VLAN,

        [object]$Role,

        [hashtable]$Custom_Fields,

        [string]$Description,

        [switch]$Is_Pool,

        [switch]$Force
    )

    $Body = @{
        Prefix        = $Prefix
        Status        = $Status
        Tenant        = $Tenant
        Site          = $Site
        VRF           = $VRF
        VLAN          = $VLAN
        Role          = $Role
        Custom_Fields = $Custom_Fields
        Description   = $Description
        Is_Pool       = $Is_Pool
    }

    $Json = $Body | ConvertTo-Json -Depth 100

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/$($_)" -Method PATCH -Body $Json
    

}
