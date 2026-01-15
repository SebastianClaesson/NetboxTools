function New-NbxIPAMPrefix {

    <#
    .SYNOPSIS
        Create a new IP prefix in NetBox

    .DESCRIPTION
        Creates a new IP prefix object in NetBox

    .PARAMETER Prefix
        The IP prefix, e.g. "192.168.1.0/24"

    .PARAMETER Status
        The status of the prefix

    .PARAMETER IsPool
        Whether the prefix is a pool

    .PARAMETER Description
        Description of the prefix

    .PARAMETER OptionalAttribute
        Hashtable of optional attributes
    #>

    [CmdletBinding(ConfirmImpact = 'low',
        SupportsShouldProcess = $true)]
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [string]$Prefix,

        [ValidateSet('container', 'active', 'reserved', 'deprecated')]
        [string]$Status = 'active',

        [bool]$IsPool = $true,

        [string]$Description,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        prefix  = $Prefix
        status  = $Status
        is_pool = $IsPool
    }

    if ($PSBoundParameters.ContainsKey('Description')) {
        $Body.Add('description', $Description) | Out-Null
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new IP prefix at $($script:NbxConfig.URI)/ipam/prefixes"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/" -Method POST -Body $Json

}
