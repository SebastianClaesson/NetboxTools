function Get-NbxDCIMInterface {

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
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/interfaces/$($_)/" -Method GET
            }
        }
        'Query' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/interfaces/" -Method GET -Query $Query
        }
        'Default' {
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/dcim/interfaces/" -Method GET
        }
    }

}
