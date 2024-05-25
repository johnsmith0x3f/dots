#!/bin/zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# set alias
alias eza="eza --color=always --icons=always"
alias ls="ls --color=always"
alias grep="grep --color=auto"

# import my functions
source "$ZDOTDIR/fun.zsh"

# load scripts
source "$XDG_CONFIG_HOME/fzf/fzf.zsh"
source "$XDG_CONFIG_HOME/zoxide/zoxide.zsh"

# load plugins with zgenom
source "$ZDOTDIR/.zgenom/zgenom.zsh"
source "$ZDOTDIR/.zgenomrc"
