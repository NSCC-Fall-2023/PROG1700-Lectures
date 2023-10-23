# arrays in arrays (multidimensional arrays)
$TicTacToe = @(
    @('X',' ','O'),
    @('X','O',' '),
    @(' ','O','X')
)
for ($r = 0; $r -lt $TicTacToe.Length; $r++) {
    for ($c = 0; $c -lt $TicTacToe[$r].Length; $c++) {
        Write-Host "$($TicTacToe[$r][$c])|" -NoNewline
    }
    Write-Host
    Write-Host ("-" * 6)
}

Write-Host "`n"

# make a move
$TicTacToe[2][0] = 'X'

for ($r = 0; $r -lt $TicTacToe.Length; $r++) {
    for ($c = 0; $c -lt $TicTacToe[$r].Length; $c++) {
        Write-Host "$($TicTacToe[$r][$c])|" -NoNewline
    }
    Write-Host
    Write-Host ("-" * 6)
}
