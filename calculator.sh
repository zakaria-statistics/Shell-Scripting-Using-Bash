#!/bin/bash

# Prompt for two numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

# Ask for the operation
read -p "Enter the operation (+, -, *, /): " op

# Perform the calculation
case $op in
	+) result=$((num1 + num2)) ;;
	-) result=$((num1 - num2)) ;;
	'*') result=$((num1 * num2)) ;;
	/) result=$((num1 / num2)) ;;
	*) echo "Invalid operation"; exit 1 ;;
esac

# Display the result
echo "Result: $result"
