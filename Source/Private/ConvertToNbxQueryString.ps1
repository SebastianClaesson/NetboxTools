function ConvertToNbxQueryString {
    <#
        Converts a dictionary into an URL encoded query string. Array values are repeated for each value.
    #>
    [CmdletBinding()]
    [OutputType([string])]
    param (
        [System.Collections.IDictionary]$Query
    )

    if (-not $Query -or $Query.Count -eq 0) {
        return ''
    }

    $Pairs = foreach ($Key in $Query.Keys) {
        foreach ($Value in @($Query[$Key])) {
            $StringValue = if ($Value -is [bool]) { $Value.ToString().ToLowerInvariant() } else { [string]$Value }
            '{0}={1}' -f [uri]::EscapeDataString([string]$Key), [uri]::EscapeDataString($StringValue)
        }
    }
    $Pairs -join '&'
}
