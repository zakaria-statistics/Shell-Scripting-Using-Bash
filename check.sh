#!/bin/bash

# Ask for the file name
read -p "Enter the file name: " file

#Check if the file exists
if [[ -e "$file" ]]; then
	echo "The file '$file' exists."
else
	echo "The file '$file' does not exist."
fi
