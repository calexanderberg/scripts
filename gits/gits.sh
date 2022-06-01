#!/bin/bash

echo "Write your commit message"

read txt

echo ""
echo "Running command: git add ."
git add .
echo "Running command: git commit -m \"$txt\""
git commit -m "$txt"
echo "Running command: git push"
git push
