BeforeAll {
    . $PSScriptRoot\try_pester.ps1
}

Describe 'Get-Numbers' {
    It 'simply returns 5 numbers as an array' {
        $numbers = Get-Numbers
        $numbers.Count | Should -Be 5
    }
}