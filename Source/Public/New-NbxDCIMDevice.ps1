function New-NbxDCIMDevice {

    <#
    .SYNOPSIS
        Create a new device in NetBox

    .DESCRIPTION
        Creates a new device object in NetBox

    .PARAMETER Role
        The device role ID

    .PARAMETER DeviceType
        The device type ID

    .PARAMETER Site
        The site ID

    .PARAMETER OptionalAttribute
        Hashtable of optional attributes
    #>

    [CmdletBinding()]
    #region Parameters
    param
    (
        [Parameter(Mandatory)]
        [int]$Role,

        [Parameter(Mandatory)]
        [int]$DeviceType,

        [Parameter(Mandatory)]
        [int]$Site,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        role        = $Role
        device_type = $DeviceType
        site        = $Site
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new device at $($script:NbxConfig.URI)/dcim/devices"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/devices/" -Method POST -Body $Json

}