#!/bin/sh

# Stow or unstow etc (.config) and usr (.local) directory.
stow $1 -d ./etc -t "${XDG_CONFIG_HOME}" . && stow $1 -d ./usr -t "${XDG_DATA_HOME%/*}" .
