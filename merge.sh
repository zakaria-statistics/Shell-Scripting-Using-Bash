#!/bin/bash

# Check if three arguments are provided
if [[ $# -lt 3 ]]; then
	echo "Usage: $0 <arg1> <arg2> <arg3>"
	echo "Example: $0 file1.txt file2.txt merged_output.txt"
	exit 1
fi

# Assign positional arguments to variables
a="$1"	#Fist input
b="$2"	#Second input
c="$3"	#Third input (output file)

# Display the inputs
echo "Processing with the following inputs:"
echo "Variable a (Input 1): $a"
echo "Variable b (Input 2): $b"
echo "Variable c (Output): $c"

# Example operation: Check if the input files exist
if [[ ! -f "$a" || ! -f "$b" ]]; then
	echo "Error: One or both input files do not exist!"
fi

# Example operation: Combine the content of two files  ||core logic for merging||
echo "Merging files $a and $b into $c..."
cat "$a" "$b" > "$c"

# Check if the operation succeeded
if [[ $?  -eq 0 ]]; then
	echo "Files successfully merged into $c!"
else
	echo "Error occurred while merging files."
fi

