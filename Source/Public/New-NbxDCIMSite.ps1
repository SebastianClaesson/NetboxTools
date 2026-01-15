function New-NbxDCIMSite {

    <#
    .SYNOPSIS
        Create a new site in NetBox

    .DESCRIPTION
        Create a new site in NetBox

    .EXAMPLE
        New-NbxDCIMSite -name MySite

        Add new Site MySite on Netbox

    #>

    [CmdletBinding(ConfirmImpact = 'Low',
        SupportsShouldProcess = $true)]
    [OutputType([pscustomobject])]
    param
    (
        [Parameter(Mandatory)]
        [ValidateLength(1, 100)]
        [string]$Name,

        [Parameter(Mandatory)]
        [ValidateLength(1, 100)]
        [ValidatePattern('^[-a-zA-Z0-9_]+$')]
        [string]$Slug,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        name = $Name
        slug = $Slug
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new site at $($script:NbxConfig.URI)/dcim/sites"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/sites/" -Method POST -Body $Json

}
