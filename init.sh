#!/bin/bash

# Check if all arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: ./init.sh <email> <username> <token>"
    exit 1
fi

# Set your email for gitman repository
git config user.email "$1"

# Set your token for gitman repository
git remote set-url origin https://$3@$2/github.com/username/repo.git
