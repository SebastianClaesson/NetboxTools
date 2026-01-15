function New-NbxContact {

    <#
    .SYNOPSIS
        Create a new contact in NetBox

    .DESCRIPTION
        Creates a new contact object in NetBox which can be linked to other objects

    .PARAMETER Name
        The contacts full name, e.g "Leroy Jenkins"

    .PARAMETER OptionalAttribute
        Optional Attributes as a hashtable, allowed values; api/schema/swagger-ui/#/tenancy/tenancy_contacts_create

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

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        name = $Name
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new contact at $($script:NbxConfig.URI)/tenancy/contacts"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contacts/" -Method POST -Body $Json

}