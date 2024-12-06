#!/bin/bash

word_search() {
    local word=$1
    local file=$2

    if [[ ! -f "$file" ]]; then
        echo "Error: File '$file' not found!" >&2
        exit 1
    fi

    echo "Searching for '$word' in file '$file'..."

    grep -n "$word" "$file"
}

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <word> <file>"
    exit 1
fi

word_search "$1" "$2"