function New-NbxContactRole {

    <#
    .SYNOPSIS
        Create a new contact role in Netbox

    .DESCRIPTION
        Creates a new contact role object in Netbox

    .PARAMETER Name
        The contact role name, e.g "Network Support"

    .PARAMETER Slug
        The unique URL for the role. Can only contain hypens, A-Z, a-z, 0-9, and underscores

    .EXAMPLE
        PS C:\> New-NbxContact -Name 'Leroy Jenkins' -Email 'leroy.jenkins@example.com'

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

    Write-Verbose "Creating a new circuit at $($script:NbxConfig.URI)/tenancy/contacts"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contacts/" -Method POST -Body $Json

}