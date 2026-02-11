#!/bin/bash

# Project C: User Account Inspector 

# Check if a username was provided 
if [ -z "$1" ]; then
	echo "Usage: $0 <username>"
	exit 1
fi

USERNAME="$1"

# Check if the user exists
if grep -q "$USERNAME:" /etc/passwd; then
	echo "User '$USERNAME' exists on this system."
else
	echo "User '$USERNAME' does NOT exist on this system."
	exit 1 
	fi
# Get user details 

USER_INFO=$(grep "^$USERNAME:" /etc/passwd)

USER_ID=$(echo "$USER_INFO" | cut -d: -f3)
GROUP_ID=$(echo "$USER_INFO" | cut -d: -f4)
HOME_DIR=$(echo "$USER_INFO" | cut -d: -f6)
SHELL=$(echo "$USER_INFO" | cut -d: -f7)

echo "User details:"
echo "  Username: $USERNAME"
echo "  UID: $USER_ID"
echo "  GID: $GROUP_ID"
echo "  Home directory: $HOME_DIR"
echo "  Shell: $SHELL"
