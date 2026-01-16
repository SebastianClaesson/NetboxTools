function Get-NbxIPAMPrefix {

    <#
    .SYNOPSIS
        A brief description of the Get-NbxIPAMPrefix function.

    .DESCRIPTION
        A detailed description of the Get-NbxIPAMPrefix function.

    .PARAMETER Id
        A description of the Id parameter.
    .EXAMPLE
        PS C:\> Get-NbxIPAMPrefix

    .NOTES
        Additional information about the function.
#>

    [CmdletBinding(DefaultParameterSetName = 'Query')]
    param
    (
        [Parameter(ParameterSetName = 'Id')]
        [uint64[]]$Id,

        [Parameter(ParameterSetName = 'Query')]
        [string]
        $Contains
    )

    switch ($PSCmdlet.ParameterSetName) {
        'Id' {
            $Id | ForEach-Object {
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/$($_)/" -Method GET
            }
        }
        'Query' {
            if ($PSBoundParameters.ContainsKey('Contains')) {
                $Id | ForEach-Object {
                    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/$($_)/?contains=$($Contains)&$($script:NbxConfig.MaxPageSize)/" -Method GET
                }
            }
            else {
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/ipam/prefixes/?limit=$($script:NbxConfig.MaxPageSize)" -Method GET
            }
        }
    }
}
