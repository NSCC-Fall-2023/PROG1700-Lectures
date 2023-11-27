
# create a database
function Initialize-CrappyDB {
    # check if database exists
    if (-not (Test-Path 'crappydb')) {
        # if not, create the database
        New-Item 'crappydb' -ItemType Directory
        Set-Location 'crappydb'
        
        # create the database, "crappydb.txt" in a subfolder, called 'crappydb'
        New-Item 'crappydb.txt' -ItemType File

    }
}
#Initialize-CrappyDB

# insert records into database
function Add-Data {
    $records = @(
        @("w123456","john","smith"),
        @("w234567","jane","doe"),
        @("w345678","jack","sprat")
    )
    $db = "$pwd\crappydb\crappydb.txt"
    $fs = [System.IO.StreamWriter]::new($db)
    foreach ($r in $records) {
        $fs.Write($r[0])
        $fs.Write(",")
        $fs.Write($r[1])
        $fs.Write(",")
        $fs.Write($r[2])
        $fs.Write("`n")
    }
    $fs.Close()
}
#Add-Data

# display records from the database
function Select-Data {
    $db = "$pwd\crappydb\crappydb.txt"
    $records = Get-Content $db
    foreach ($r in $records) {
        Write-Host $r
    }
}
#Select-Data

# update records with new information

# delete records from the database
function Remove-Data {
    param (
        $id
    )
    $lines = Get-Content "$pwd\crappydb\crappydb.txt"
    Remove-Item "$pwd\crappydb\crappydb.txt"   
    foreach ($line in $lines) {
        $fields = $line.Split(",")
        if ($fields[0] -ne $id ) {
            # ignore the line we no longer want
            Add-Content "$pwd\crappydb\crappydb.txt" $line 
        }
    }

}
#Remove-Data -id w234567

Export-ModuleMember -Function Initialize-CrappyDB,Add-Data,Select-Data,Remove-Data