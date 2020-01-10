# TerminalStatePreserver
A simple shell script to preserve terminal states upon reboot, for multiple terminal tabs

## Set Up
- Download script files
- Modify file permissions to allow execution
- Change the following path to point to wherever you wish to save your terminalState file in **both the scripts**
```
[3] fileLocation="/home/vikram/.customScripts/terminalStatePreserver/terminalState.txt"
```
- Add the following lines to your .bashrc
```
# Read from file on terminal open
source <PATH_TO_readFromFile.sh>

# Write to file on terminal exit 
trap <PATH_TO_writeFromFile.sh> EXIT
```
- Source the new .bashrc or open a new terminal tab to enforce changes

## Note
- The readFromFile.sh is built to open new tabs on the pantheon-terminal. Change the following line depending on your terminal (For ex, gnome-terminal for Ubuntu)
```
[20] pantheon-terminal -w "${workingDirectories[index]}" &> /dev/null
```
