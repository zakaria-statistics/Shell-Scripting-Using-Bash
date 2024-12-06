#!/bin/bash

string_oper() {
    input=$1
    echo "Original: $input"
    echo "Length: ${#input}"
    echo "Uppercase: ${input^^}"
    echo "Lowercase: ${input,,}"
    echo "Substring (first 3 chars): ${input:0:3}"
}

string_oper "$1"