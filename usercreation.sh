#!/bin/bash

# Prompt for username
read -p "Enter the username to create: " username

# Check if the user already exists
if id "$username" &>/dev/null; then
  echo "User '$username' already exists."
  exit 1
fi

# Create the user
sudo useradd -m "$username"

if [ $? -ne 0 ]
then 
    echo "user created"
else    
    echo "not created"
fi

