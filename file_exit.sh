#!/bin/bash

check_file() {
    local filepath=$1
    if [[ -f "$filepath" ]]; then
        echo "File '$filepath' exists."
    else
        echo "File '$filepath' does not exists."
    fi
}

check_file "$1"