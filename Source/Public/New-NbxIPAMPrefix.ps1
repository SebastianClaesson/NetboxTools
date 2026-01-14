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

        [bool]$IsPool = $true,

        [string]$Description,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        prefix        = $Prefix
        status       = $Status
        is_pool       = $IsPool
    }

    if ($PSBoundParameters.ContainsKey('Description')) {
        $Body.Add('description',$Description) | Out-Null
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new ip address prefix at $($script:NbxConfig.URI)/ipam/prefixes"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/" -Method POST -Body $Json

}
