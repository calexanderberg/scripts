#!/bin/bash

#A command for adding, commiting, and pushing your files to github.

echo ""
echo "Welcome to gits"
echo "Running: git pull"
git pull

echo ""
echo "Running: git status"
git status

echo ""
echo "Do you want to add all your changes to the repository? (y/n)" 

read decision

if [[ $decision == "yes" || $decision == "y" ]]; then

	echo ""
	echo "Write your commit message"
	read txt

	echo ""
	echo "Running: git add ."
	git add .

	echo ""
	echo "Running: git commit -m \"$txt\""
	git commit -m "$txt"

	echo ""
	echo "Running: git push"
	git push
	
	echo ""
	echo "shutting down"
	exit 1

else 
	echo "shutting down"
	exit 1
fi
