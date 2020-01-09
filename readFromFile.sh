#!/bin/bash

fileLocation="/home/vikram/.customScripts/terminalStatePreserver/terminalState.txt"

#Check if stateFile exists
if [ -f $fileLocation ];
then
    # Populate array from stateFile
    readarray -t workingDirectories < $fileLocation

    # Delete stateFile
    rm $fileLocation

    arrayLength=${#workingDirectories[@]}

    # Open new terminal tabs (Other than index 0)
    index=1
    while [ $index -lt $arrayLength ]
    do  
        pantheon-terminal -w "${workingDirectories[index]}"
        ((index++))
    done
    
    # Change working directory to index 0
    cd "${workingDirectories[0]}"
fi

return