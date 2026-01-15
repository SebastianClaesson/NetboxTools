function New-NbxIPAMAddress {

    <#
    .SYNOPSIS
        Create a new IP address in NetBox

    .DESCRIPTION
        Create a new IP address in NetBox with a status of Active by default.

    .PARAMETER Address
        IP address in CIDR notation: 192.168.1.1/24

    .EXAMPLE
        New-NbxIPAMAddress -Address 192.0.2.1/32

        Add new IP Address 192.0.2.1/32 with status active

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [string]$Address,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        start_address = $Start_Address
        end_address   = $End_Address
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new ip address at $($script:NbxConfig.URI)/ipam/ip-addresses"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/ip-addresses/" -Method POST -Body $Json

}