function Get-NbxAPIDefinition {

    [CmdletBinding()]
    param
    (
        [ValidateSet('json', 'yaml', IgnoreCase = $true)]
        [string]$Format = 'json',

        [Parameter()]
        [string]
        $Language = 'en'
    )

    InvokeNbxRestMethod -URI "$($script:NbxConfig.URI)/schema/?format=$Format&lang=$Language" -Method GET

}