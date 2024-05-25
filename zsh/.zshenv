#!/bin/zsh

# $ZDOTDIR is set to $HOME/.config/zsh by default

export PATH="$PATH:/usr/local/texlive/2024/bin/x86_64-linux"

export XDG_CONFIG_HOME="$HOME/.config"

export ALACRITTY_DIR="$XDG_CONFIG_HOME/alacritty"
export BAT_THEME="tokyonight_storm"
export EDITOR="nvim"
export HISTFILE="$ZDOTDIR/.histfile"
export HISTSIZE=1000
export SAVEHIST=1000
export ZLE_RPROMPT_INDENT=0 # might cause problems, use with care
