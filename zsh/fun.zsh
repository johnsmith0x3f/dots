#!/usr/bin/env zsh

# Marco? Polo!
function marco() {
    export marco="$(pwd)"
    echo "marco is at $marco"
}
function polo() {
    cd "$marco"
}

