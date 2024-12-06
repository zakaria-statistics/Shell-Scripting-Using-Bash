#!/bin/bash

create () {
    touch "$1"
    chmod "$2" "$1"
}


create "$1" "$2"