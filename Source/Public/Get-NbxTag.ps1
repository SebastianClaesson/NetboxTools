function Get-NbxTag {
[CmdletBinding(DefaultParameterSetName = 'Default')]
    param
    (
        [Parameter(Mandatory, ParameterSetName = 'Id')]
        [uint64[]]
        $Id,

        [Parameter(ParameterSetName = 'Default')]
        [switch]
        $All
    )

    switch ($PSCmdlet.ParameterSetName) {
        'Id' {
            $Id | ForEach-Object {
                InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/extras/tags/$($_)/" -Method GET
            }
        }
        'Default' {
        write-Verbose "Getting All tags at $($script:NbxConfig.URI)/extras/tags"
            InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/extras/tags/" -Method GET
        }
    }

}