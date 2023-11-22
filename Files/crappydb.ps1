
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
Initialize-CrappyDB

# insert records into database

# display records from the database

# update records with new information

# delete records from the database

