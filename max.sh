#!/bin/bash

find_max() {
    local max=$1
    for num in "$@"; do
        if ((num > max)); then
            max=$num
        fi
    done
    echo "Maximum: $max"
}

find_max "$@"