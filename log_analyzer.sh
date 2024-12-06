#!/bin/bash

log_analyzer() {
    local severity=$1
    local file=$2

    if [[ ! -f "$file" ]]; then
        echo "Error: File '$file' not found!" >&2
        exit 1
    fi

    echo "Filtering '$severity' logs from '$file' ..."

    case "$severity" in
        ERROR|WARN|INFO)
            grep -i "$severity" "$file"
            ;;
        *)
            echo "Error: Invalid severity level '$severity'. Valid levels are ERROR, WARN or INFO." >&2
            exit 1
            ;;
    esac
}

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <severity> <file>"
    exit 1
fi

log_analyzer "$1" "$2"
