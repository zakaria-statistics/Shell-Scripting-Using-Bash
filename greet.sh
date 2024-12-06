#!/bin/bash

greet_people() {
    for name in "$@"; do
        echo "hello, $name!"
    done
}

greet_people "$@"