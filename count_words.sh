#!/bin/bash

count_words() {
    local filepath=$1
    if [[ -f "$filepath" ]]; then
        local count=$(wc -w < "$filepath")
        echo "Word count: $count"
    else
        echo "Error: File '$filepath' does not exist!"
    fi
}

count_words "$1"