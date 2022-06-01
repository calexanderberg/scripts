#!/bin/bash

# This script installs scripts for you by removing the .sh file and moving the command to /usr/local/bin

# Please note this command could be dangerous so do not abuse it!!!
echo ""
echo "Welcome to Basher"
echo ""
echo "Note that this could be abused and dangeous so be careful!!!"
echo ""
echo "Below is a list of files in your current directory"
echo "___________________________________________________"
sudo ls
echo "___________________________________________________"
echo "Do you see the file you want to install (y/n)?"
read decision

if [[ $decision == "yes" || $decision == "y" ]]; then
	
	echo ""
	echo "Perfect, please write the name of the file below (including the extension):"
	read file
	echo "You selected $file"
	
	echo ""
	echo "Do you want to continue? (y/n) This is the last security check."
	read decision
	
	if [[ $decision == "yes" || $decision == "y" ]]; then

		echo "Copying the file and removing extension"
		baseName=`echo $file | cut -d "." -f 1`
		cp $file $baseName
		sudo mv $baseName ~/../../usr/local/bin
	
		echo "File sucessfully moved to the bin directory"
		echo "Shutting down"
		exit 1
	else
		echo "You did not want to continue."
		echo "Shutting down"
		exit 1
	fi
else
	echo ""
	echo "Use this program when you are in the right directory"
	echo "Shutting down"	
	exit 1
fi
