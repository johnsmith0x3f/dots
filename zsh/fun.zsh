#!/bin/zsh

# Marco? Polo!
function marco() {
    export MARCO="$(pwd)"
    echo "marco is at $MARCO"
}
function polo() {
    cd "$MARCO"
}
