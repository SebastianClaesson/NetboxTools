<#
Replace PlatyPS placeholder tokens across Docs\Help\*.md
Creates .bak copies before modifying files. Prints summary of files changed and counts.
#>

$root = Join-Path $PSScriptRoot ".." | Resolve-Path -Relative
$helpDir = Join-Path $root "Docs\Help"

$replacements = @{
    '\{\{\s*Fill in the Synopsis\s*\}\}' = "A brief description of the cmdlet's purpose; update this with implementation-specific details."
    '\{\{\s*Fill in the Description\s*\}\}' = "A detailed description of the cmdlet's behavior. Update with implementation-specific details."
    '\{\{\s*Insert list of aliases\s*\}\}' = "This cmdlet has no aliases."
    '\{\{\s*Add example description here\s*\}\}' = "A short example description."
    '\{\{\s*Fill in the related links here\s*\}\}' = ""  # blank line
}

$modified = @()

Get-ChildItem -Path $helpDir -Filter *.md -Recurse | ForEach-Object {
    $path = $_.FullName
    $orig = Get-Content -Raw -LiteralPath $path
    $new = $orig

    foreach ($pattern in $replacements.Keys) {
        $new = [regex]::Replace($new, $pattern, $replacements[$pattern])
    }

    if ($new -ne $orig) {
        # backup if not already backed up
        $bak = "$path.bak"
        if (-not (Test-Path $bak)) {
            Copy-Item -LiteralPath $path -Destination $bak -ErrorAction SilentlyContinue
        }
        Set-Content -LiteralPath $path -Value $new -Encoding UTF8

        # count replacements roughly
        $counts = @{}
        foreach ($pattern in $replacements.Keys) {
            $counts[$pattern] = ([regex]::Matches($orig, $pattern)).Count
        }

        $modified += [pscustomobject]@{
            File = (Resolve-Path -LiteralPath $path).Path
            Replacements = $counts
        }
    }
}

if ($modified.Count -eq 0) {
    Write-Output "No files changed. No remaining placeholders found."
} else {
    Write-Output "Files modified: $($modified.Count)"
    foreach ($m in $modified) {
        Write-Output "- $($m.File)"
        foreach ($k in $m.Replacements.Keys) {
            $c = $m.Replacements[$k]
            if ($c -gt 0) { Write-Output "    Replaced $c occurrences of pattern: $k" }
        }
    }
}

# Exit with 0
exit 0
