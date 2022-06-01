#!/bin/bash

#A command for adding, commiting, and pushing your files to github.

echo "Write your commit message"

read txt

echo ""
echo "Running command: git add ."
git add .
echo ""
echo "Running command: git commit -m \"$txt\""
git commit -m "$txt"
echo ""
echo "Running command: git push"
git push
