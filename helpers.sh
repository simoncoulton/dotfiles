#!/usr/bin/env bash

complete () {
    printf "\e[0;32m\xE2\x9C\x94\e[0m $1\n"
}

info () {
    printf "\e[0;33m$1\033[0m\n"
}

section () {
    printf "\n\033[1m$1\033[0m\n"
}
