function New-NbxIPAMVLAN {

    <#
    .SYNOPSIS
        Create a new VLAN

    .DESCRIPTION
        Create a new VLAN in Netbox with a status of Active by default.

    .PARAMETER VID
        The VLAN ID.

    .PARAMETER Name
        The name of the VLAN.

    .PARAMETER Status
        Status of the VLAN. Defaults to Active

    .PARAMETER Tenant
        Tenant ID

    .PARAMETER Role
        Role such as anycast, loopback, etc... Defaults to nothing

    .PARAMETER Description
        Description of IP address

    .PARAMETER Custom_Fields
        Custom field hash table. Will be validated by the API service

    .PARAMETER Raw
        Return raw results from API service

    .PARAMETER Address
        IP address in CIDR notation: 192.168.1.1/24

    .EXAMPLE
        PS C:\> Create-NbxIPAMAddress

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [ValidateRange(1, 4094)]
        [int]$VID,

        [Parameter(Mandatory)]
        [ValidateLength(1, 64)]
        [string]$Name,

  [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        vid            = $VID
        name       = $Name
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new vlan at $($script:NbxConfig.URI)/ipam/vlans"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/vlans/" -Method POST -Body $Json

}

