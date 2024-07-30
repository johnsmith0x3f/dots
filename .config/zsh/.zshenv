#!/bin/zsh

# $ZDOTDIR is set to $HOME/.config/zsh by default

export PATH="$PATH:/usr/local/texlive/2024/bin/x86_64-linux"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export ALACRITTY_DIR="$XDG_CONFIG_HOME/alacritty"
export BAT_THEME="tokyonight_storm"

# Default applications.
export EDITOR="nvim"
export TERMINAL="wezterm"

# Save command history, 1000 is far from enough.
export HISTFILE="$ZDOTDIR/.histfile"
export HISTSIZE=10000
export SAVEHIST=10000

export ZLE_RPROMPT_INDENT=0 # might cause problems, use with care
