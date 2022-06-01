#!/bin/bash

# This script installs scripts for you by removing the .sh file and moving the command to /usr/local/bin

# Please note this command could be dangerous so do not abuse it!!!
echo ""
echo "Welcome to Basher"
echo "We will install a bash script for you"
echo ""
echo "Note that this could be abused and dangeous so be careful!!!"
echo ""
echo "Below are a list of files in your current directory"
echo "___________________________________________________"
sudo ls
echo "___________________________________________________"
echo "Do you see the file you want to install (y/n)?"
read decision

if [[ $decision == "y" ]]; then
	echo "perfect, please write the name of the file below"
	read file
	echo "you selected $file"
else
	echo ""
	echo "Use this program when you are in the right directory"
fi
