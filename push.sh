#!/bin/bash

# Check if commit message is provided
if [ -z "$1" ]; then
    echo "Error: Commit message required"
    echo "Usage: ./push.sh \"your commit message\""
    exit 1
fi

# Add all changes
git add .

# Commit with the provided message
git commit -m "$1"

# Push to main branch
git push origin main