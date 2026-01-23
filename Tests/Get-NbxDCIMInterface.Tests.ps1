param(
    $PSM1 = "$PSScriptRoot\..\Source\NetboxTools.psm1"
)

BeforeAll {
    Remove-Module NetboxTools -Force -ErrorAction SilentlyContinue
    Import-Module $PSM1 -Force
}

Describe "Get-NbxDCIMInterface" {

    Context "Function structure and parameters" {

        It "Should be available as a function" {
            Get-Command -Name "Get-NbxDCIMInterface" -ErrorAction SilentlyContinue | Should -Not -BeNullOrEmpty
        }

        It "Parameter names are PascalCase" {
            (Get-Command "Get-NbxDCIMInterface").Parameters.Keys | ForEach-Object { $_ | Should -Match '^[A-Z].*' }
        }

        It "Should have mandatory parameters" {
            (Get-Command "Get-NbxDCIMInterface").Parameters.Keys | Should -Contain "Id"
            (Get-Command "Get-NbxDCIMInterface").Parameters.Keys | Should -Contain "Query"
        }
    }

}
