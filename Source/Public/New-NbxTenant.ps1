function New-NbxTenant {

<#
    .SYNOPSIS
        Create a new tenant in Netbox

    .DESCRIPTION
        Creates a new tenant object in Netbox

    .PARAMETER Name
        The tenant name, e.g "Contoso Inc"

    .PARAMETER Slug
        The unique URL for the tenant. Can only contain hypens, A-Z, a-z, 0-9, and underscores

    .PARAMETER Description
        Short description of the tenant

    .PARAMETER Custom_Fields
        Hashtable of custom field values.

    .PARAMETER Raw
        Return the unparsed data from the HTTP request

    .EXAMPLE
        PS C:\> New-NbxTenant -Name 'Contoso Inc' -Slug 'contoso-inc'

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding()]
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
        name            = $Name
        slug       = $Slug
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new vlan at $($script:NbxConfig.URI)/tenancy/tenants"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/tenants/" -Method POST -Body $Json

}

