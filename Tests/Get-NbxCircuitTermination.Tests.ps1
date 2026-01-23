param(
    $PSM1 = "$PSScriptRoot\..\Source\NetboxTools.psm1"
)

BeforeAll {
    Remove-Module NetboxTools -Force -ErrorAction SilentlyContinue
    Import-Module $PSM1 -Force
}

Describe "Get-NbxCircuitTermination" {

    Context "Function structure and parameters" {

        It "Should be available as a function" {
            Get-Command -Name "Get-NbxCircuitTermination" -ErrorAction SilentlyContinue | Should -Not -BeNullOrEmpty
        }

        It "Parameter names are PascalCase" {
            (Get-Command "Get-NbxCircuitTermination").Parameters.Keys | ForEach-Object { $_ | Should -Match '^[A-Z].*' }
        }

        It "Should have mandatory parameters" {
            (Get-Command "Get-NbxCircuitTermination").Parameters.Keys | Should -Contain "Id"
            (Get-Command "Get-NbxCircuitTermination").Parameters.Keys | Should -Contain "Query"
        }
    }

}
