#!/bin/bash

factorial() {
    local num=$1
    local fact=1
    for ((i=2; i<=num; i++)); do
        fact=$((fact * i))
    done
    echo "Factorial of $num: $fact"
}

factorial "$1"