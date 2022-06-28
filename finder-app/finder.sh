#!/bin/bash

if [ $# -eq '2' ]
then

    filesdir=$1
    searchstr=$2
    
    if [ -d "$filesdir" ]
    then
        # Directory created
        numberFiles=$(find $filesdir -type f | wc -l)
        matchingLines=$(grep -r $searchstr $filesdir | wc -l)
        echo "The number of files are $numberFiles and the number of matching lines are $matchingLines"
    else
        # Directory do not exist
        exit 1
    fi

else
    # No parameters
    exit 1
fi


