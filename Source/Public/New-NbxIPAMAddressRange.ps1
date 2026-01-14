function New-NbxIPAMAddressRange {

<#
    .SYNOPSIS
        Create a new IP address range to Netbox

    .DESCRIPTION
        Create a new IP address range to Netbox with a status of Active by default. The maximum supported
        size of an IP range is 2^32 - 1.

    .PARAMETER Start_Address
        Starting IPv4 or IPv6 address (with mask). The maximum supported size of an IP range is 2^32 - 1.

    .PARAMETER End_Address
        Ending IPv4 or IPv6 address (with mask). The maximum supported size of an IP range is 2^32 - 1.

    .EXAMPLE
        New-NbxIPAMAddressRange -Start_Address 192.0.2.20/24 -End_Address 192.0.2.20/24

        Add new IP Address range from 192.0.2.20/24 to 192.0.2.20/24 with status active

    .NOTES
        https://Nbx.neonet.org/static/docs/models/ipam/iprange/
#>

    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [string]$Start_Address,

        [Parameter(Mandatory)]
        [string]$End_Address,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        start_address            = $Start_Address
        end_address = $End_Address
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new ip address range at $($script:NbxConfig.URI)/ipam/ip-ranges"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/ip-ranges/" -Method POST -Body $Json

}