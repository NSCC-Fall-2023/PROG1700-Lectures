
param (
    $Names,
    [int]$Repeat
)

function Write-Emoji {
    $emojis = @{
        "see" = "`u{1F648}";
        "hear" = "`u{1F649}";
        "speak" = "`u{1F64A}";
        "jollyroger" = "`u{2620}";
        "tree" = "`u{1F384}";
        "santa" = "`u{1F385}";
        "poop" = "`u{1F4A9}";
    }

    foreach ($Name in $Names) {
        Write-Host ($emojis[$Name] * $Repeat) -NoNewline
    }
    Write-Host
}
Write-Emoji