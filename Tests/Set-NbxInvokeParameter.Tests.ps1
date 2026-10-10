param(
    $PSM1 = "$PSScriptRoot\..\Source\NetboxTools.psm1"
)

BeforeAll {
    Remove-Module NetboxTools -Force -ErrorAction SilentlyContinue
    Import-Module $PSM1 -Force
    . "$PSScriptRoot\TestHelpers.ps1"
    Initialize-NbxTestConnection
}

Describe 'Set-NbxInvokeParameter' {
    BeforeEach {
        Mock Invoke-RestMethod -ModuleName NetboxTools -MockWith { New-NbxTestResponse -Uri $Uri -Method $Method -Body $Body }
    }

    AfterEach {
        Initialize-NbxTestConnection
    }

    It 'Passes the parameters to Invoke-RestMethod' {
        Set-NbxInvokeParameter -InvokeParameter @{ SkipCertificateCheck = $true; MaximumRetryCount = 2 }
        Get-NbxTag
        Should -Invoke Invoke-RestMethod -ModuleName NetboxTools -Times 1 -Exactly -ParameterFilter {
            $SkipCertificateCheck -eq $true -and $MaximumRetryCount -eq 2
        }
    }

    It 'Returns the parameters with -PassThru' {
        (Set-NbxInvokeParameter -InvokeParameter @{ MaximumRetryCount = 2 } -PassThru).MaximumRetryCount | Should -Be 2
    }

    It 'Does not change the parameters with -WhatIf' {
        Set-NbxInvokeParameter -InvokeParameter @{ MaximumRetryCount = 2 } -WhatIf
        InModuleScope NetboxTools { $script:NbxConfig.InvokeParams.ContainsKey('MaximumRetryCount') } | Should -BeFalse
    }
}
