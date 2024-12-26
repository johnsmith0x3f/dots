#!/bin/zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set alias.
alias ls="eza --icons=auto --group-directories-first"
alias grep="grep --color=auto"
alias pacman="pacman --color=auto"
alias yay="yay --color=auto"

# I use NeoVim btw.
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# Install antidote.
[[ -d "${ZDOTDIR}/.antidote" ]] || git clone --depth=1 "https://github.com/mattmc3/antidote.git" "${ZDOTDIR}/.antidote"
# Load plugins with antidote.
source "${ZDOTDIR}/.antidote/antidote.zsh" && antidote load ${ZDOTDIR}/.zsh_plugins.txt

# Load fzf.
source <(fzf --zsh)

# Load zoxide.
eval "$(zoxide init zsh)"

# Load custom functions.
source "${ZDOTDIR}/fun.zsh"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
