function Get-NbxContentType {

    <#
    .SYNOPSIS
        Get a content type definition from NetBox

    .DESCRIPTION
        A detailed description of the Get-NbxContentType function.

    .PARAMETER Id
        The database ID of the Content type

    .EXAMPLE
        PS C:\> Get-NbxContentType

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    param
    (
        [Parameter(Mandatory, ParameterSetName = 'Id')]
        [uint64[]]
        $Id,

        [Parameter(Mandatory, ParameterSetName = 'Query')]
        [hashtable]
        $Query,

        [Parameter(ParameterSetName = 'Default')]
        [switch]
        $All
    )

    switch ($PSCmdlet.ParameterSetName) {
        'Id' {
            $Id | ForEach-Object {
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/extras/object-types/$($_)/" -Method GET
            }
        }
        'Query' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/extras/object-types/" -Method GET -Query $Query
        }
        'Default' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/extras/object-types/" -Method GET
        }
    }

}