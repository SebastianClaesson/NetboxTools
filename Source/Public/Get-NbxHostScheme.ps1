function Get-NbxHostScheme {

    [CmdletBinding()]
    param ()

    Write-Verbose "Getting NetBox host scheme"
    if ($null -eq $script:NbxConfig.Hostscheme) {
        throw "Nbx host sceme is not set! You may set it with Set-NbxHostScheme -Scheme 'https'"
    }

    $script:NbxConfig.HostScheme

}
