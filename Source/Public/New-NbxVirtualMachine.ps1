function New-NbxVirtualMachine {

    <#
    .SYNOPSIS
        Create a new virtual machine in NetBox

    .DESCRIPTION
        Creates a new virtual machine object in NetBox

    .PARAMETER Name
        The virtual machine name

    .PARAMETER OptionalAttribute
        Hashtable of optional attributes
    #>

    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory)]
        [ValidateLength(1, 64)]
        [string]$Name,

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

    Write-Verbose "Creating a new virtual machine at $($script:NbxConfig.URI)/virtualization/virtual-machines"
    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/virtualization/virtual-machines/" -Method POST -Body $Json

}
