#!/usr/bin/env zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh



# Set alias.
alias eza="eza --color=auto --icons=auto"
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias pacman="pacman --color=auto"
alias yay="yay --color=auto"

source "$ZDOTDIR/nnn.zsh"

# import my functions
source "$ZDOTDIR/fun.zsh"

# Load scripts.
source "$XDG_CONFIG_HOME/fzf/fzf.zsh"
eval "$(thefuck --alias)"
eval "$(zoxide init zsh)"

# Load plugins with zgenom.
source "$ZDOTDIR/.zgenom/zgenom.zsh"
source "$ZDOTDIR/.zgenomrc"

# Created by `pipx` on 2024-07-10 15:26:40
export PATH="$PATH:/home/john/.local/bin"

