#!/bin/bash

# Check number of arguments
if [ $# -eq '2' ]
then

    # Filename with path
    writeFile=$1 
    # String to write
    writestr=$2

    # Extract directory name from path
    directory=$(dirname $writeFile)
    
    # Create directoy if not exist
    if [ ! -d "$directory" ] 
    then
        mkdir -p $directory
    fi

    # Write string to file
    echo "$writestr" > $writeFile

    # Evaluate success of write file
    if [ "$?" -eq 0 ]
    then
        echo "File OK"
    else 
        echo "Error writing file"
        exit 1
    fi

else
    #Not matching parametes
    exit 1
fi