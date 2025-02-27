#!/bin/sh

# Stow or unstow etc (.config) and usr (.local) directory.
stow $1 -d ./etc -t ~/.etc . && stow $1 -d ./usr -t ~/.usr .
