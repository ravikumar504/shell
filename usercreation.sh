#!/bin/bash

# Prompt for username
read -p "Enter the username to create: " username

# Check if the user already exists
if id "$username" &>/dev/null; then
  echo "User '$username' already exists."
  exit 1
fi

# Prompt for password
read -s -p "Enter the password for $username: " password
echo    # Move to a new line (hides the password input)

# Confirm password
read -s -p "Confirm the password: " password_confirm
echo

# Check if passwords match
if [[ "$password" != "$password_confirm" ]]; then
  echo "Passwords do not match."
  exit 1
fi

# Create the user
sudo useradd -m "$username"

# Set the password
echo "$username:$password" | sudo chpasswd

echo "User '$username' created successfully."