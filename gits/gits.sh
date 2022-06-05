#!/bin/bash

#A command for adding, commiting, and pushing your files to github.

echo ""
echo "Welcome to gits"
echo ""
echo "Here is the status of your repository:"

echo ""
echo "Running: git status"
git status

echo ""
echo "Do you want to pull the latest changes from this branch? [y/n]"

read decision

if [[ $decision == "yes" || $decision == "y" ]]; then
	echo ""
	echo "Running: git pull"
	git pull
fi

echo ""
echo "Do you want to add all your changes to the repository? [y/n]" 

read decision

if [[ $decision == "yes" || $decision == "y" ]]; then

	echo ""
	echo "Write your commit message"
	read txt

  echo ""
	echo "Are you sure you want to commit and push these changes? This is the last security check. [y/n]"
	read decision

  if [[ $decision == "yes" || $decision == "y" ]]; then
        	
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
		echo "Push completed. Have a good day"
	else 
		echo "You choose to not continue"
	fi
fi

echo ""
echo "shutting down"
exit 1
