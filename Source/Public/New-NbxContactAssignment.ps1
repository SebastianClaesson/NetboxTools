function New-NbxContactAssignment {

<#
    .SYNOPSIS
        Create a new contact role assignment in Netbox

    .DESCRIPTION
        Creates a new contact role assignment in Netbox

    .PARAMETER ContentType
        The content type for this assignment.

    .PARAMETER ObjectId
        ID of the object to assign.

    .PARAMETER Contact
        ID of the contact to assign.

    .EXAMPLE
        PS C:\> New-NbxContactAssignment -ContentType 'dcim.location' -Objectid 10 -Contact 15

    .NOTES
        Valid content types: https://docs.Nbx.dev/en/stable/features/contacts/#contacts_1
#>

    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [string]$ObjectType,

        [Parameter(Mandatory)]
        [uint64]$ObjectId,

        [Parameter(Mandatory)]
        [uint64]$Contact,

        [Parameter()]
        [hashtable]
        $OptionalAttribute
    )

    $Body = @{
        object_type            = $ObjectType
        object_id       = $ObjectId
        contact           = $Contact
    }

    if ($PSBoundParameters.ContainsKey('OptionalAttribute')) {
        $OptionalAttribute.keys | Foreach-object {
            $Key = $_
            $Value = $OptionalAttribute[$Key]
            $Body.Add($Key, $value) | Out-Null
        }
    }

    $Json = $Body | ConvertTo-Json -Compress

    Write-Verbose "Creating a new circuit at $($script:NbxConfig.URI)/tenancy/contact-assignments"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/tenancy/contact-assignments/" -Method POST -Body $Json

}