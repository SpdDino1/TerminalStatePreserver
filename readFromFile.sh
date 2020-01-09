#!/bin/sh

fileLocation="/home/vikram/.customScripts/terminalStatePreserver/terminalState.txt"

# Read from file
workingDirectory=$(head -n 1 $fileLocation)
cd $workingDirectory
return