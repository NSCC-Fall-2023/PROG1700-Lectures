
function Get-HighLowAnswer {
    # generate a random number
    Get-Random -Minimum 1 -Maximum 10
}

function Start-HighLowGame {
    do {
        # ask the user to make a guess
        $Guess = Read-Host "Guess a number between 1 and 10"

        # compare guess against answer until they answer correctly

        # if guess is lower than the answer, output "HIGHER"
        if ($Guess -lt $Answer) {
            "HIGHER"
        }
        # if guess is higher than the answer, output "LOWER"
        if ($Guess -gt $Answer) {
            "LOWER"
        }
        # if guess is equal to the answer, output "CORRECT!"
        if ($Guess -eq $Answer) {
            "CORRECT!"
        }
    } until ($Guess -eq $Answer)
}

# The High Low Game
# Try your best!!

$Answer = Get-HighLowAnswer
Start-HighLowGame