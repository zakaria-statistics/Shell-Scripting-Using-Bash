#!/bin/bash
# Enabling strict mode
#set -euo pipefail
IFS=$'\n\t'

# Function to greet a user with  an optional default name
greet() {
	local name=${1:-"Guest"} # Default to "Guest" if no name is provided
	echo "Hello, $name!"
}

# Function to perform a division operation
divide() {
	local dividend=$1
	local divisor=$2
	# Check for divide-by-zero
	if [[ "$divisor" -eq 0 ]]; then
		echo "Error: Division by zero!" >&2
		return 1
	fi
	local result=$((dividend / divisor))
	echo "Result: $result"
}

# Function to check if a file exists
check_file() {
	local filename=$1
	# Check if file exists
	if [[ ! -f "$filename" ]]; then
		echo "Error: File '$filename' not found!" >&2
		exit 1
	fi
echo "File '$filename' exists."
}

# Main section for testiong the functions
echo "Testing greet function..."
greet "Alice"
greet

echo -e "\nTesting divide function..."
divide 10 2 || echo "Warning: Division operation failed."
divide 10 0 || echo "Warning: Division operation failed."

echo "\nTesting check_file function..."
check_file "/etc/passwd"
check_file "/nonexistent_file"


echo -e "\nTesting divide function..."
divide 10 2 || echo "Warning: Division operation failed."
divide 10 0 || echo "Warning: Division operation failed."