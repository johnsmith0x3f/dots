#!/bin/sh

# Stow etc (config) directory.
stow -d ./etc -t ~/.config .
# Stow usr (local) directory.
stow -d ./usr -t ~/.local .
