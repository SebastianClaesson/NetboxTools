function Get-NbxDCIMRearPort {

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
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/rear-ports/$($_)/" -Method GET
            }
        }
        'Query' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/rear-ports/" -Method GET -Query $Query
        }
        'Default' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/rear-ports/" -Method GET
        }
    }

}
