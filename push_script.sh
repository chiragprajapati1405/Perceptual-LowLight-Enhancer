#!/bin/bash
cd /home/hp/Downloads/low-light-image-enhancement-main

# Initialize git if not already
git init
git branch -m main 2>/dev/null || git checkout -b main

# Add and commit
git add .
git commit -m "Restructure project for professional GitHub repository"

# Set remote and push
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/chiragprajapati1405/Low-Light-Image-Enhancement.git

echo "Attempting to push..."
GIT_TERMINAL_PROMPT=0 git push -u origin main
