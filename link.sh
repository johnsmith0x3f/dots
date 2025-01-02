#!/bin/sh

# Stow etc (.config) and usr (.local) directory.
stow -d ./etc -t ~/.config . && stow -d ./usr -t ~/.local .
