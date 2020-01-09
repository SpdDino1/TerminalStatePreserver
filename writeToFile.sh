#!/bin/bash

fileLocation="/home/vikram/.customScripts/terminalStatePreserver/terminalState.txt"

fileLastModified=`stat -c '%Y' $fileLocation` 

# Check if file exists && LastModified < 1s
if [ $fileLastModified ] && [ `expr $(date +%s) - $fileLastModified` -lt 1 ] ; 
then
    # Append to stateFile
    echo `pwd` >> $fileLocation
else
    # Overwrite stateFile
    echo `pwd` > $fileLocation
fi