function New-NbxIPAMPrefix {

    [CmdletBinding(ConfirmImpact = 'low',
        SupportsShouldProcess = $true)]
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [string]$Prefix,

        [ValidateSet('container', 'active', 'reserved', 'deprecated')]
        [string]$Status = 'active',

        [uint64]$Tenant,

        [object]$Role = $null,

        [bool]$IsPool = $true,

        [string]$Description,

        [uint64]$VRF,

        [uint64]$VLAN,

        [hashtable]$Custom_Fields,

        [switch]$Raw
    )

    $Body = @{
        prefix        = $Prefix
        status       = $Status
        role         = $Role
        is_pool       = $IsPool
        site         = $Site
    }

    if ($PSBoundParameters.ContainsKey('Description')) {
        $Body.Add('description',$Description)
    }
    if ($PSBoundParameters.ContainsKey('Custom_Fields')) {
        $Body.Add('custom_fields',$Custom_Fields)
    }
    if ($PSBoundParameters.ContainsKey('Tenant')) {
        $Body.Add('tenant',$Tenant)
    }
    if ($PSBoundParameters.ContainsKey('VLAN')) {
        $Body.Add('vlan',$VLAN)
    }
    if ($PSBoundParameters.ContainsKey('VRF')) {
        $Body.Add('vrf',$VRF)
    }

    $Json = $Body | ConvertTo-Json -Compress

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/" -Method POST -Body $Json

}
