#!/bin/zsh

# Set alias.
alias grep="grep --color=auto"
alias pacman="pacman --color=auto"
alias yay="yay --color=auto"

# Install antidote.
[[ -d "${ZDOTDIR}/.antidote" ]] || git clone --depth=1 "https://github.com/mattmc3/antidote.git ${ZDOTDIR}/.antidote"
# Load plugins with antidote.
source "${ZDOTDIR}/.antidote/antidote.zsh" && antidote load ${ZDOTDIR}/.zsh_plugins.txt
