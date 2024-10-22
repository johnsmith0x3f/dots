#!/bin/zsh

# $ZDOTDIR is set to ${XDG_CONFIG_HOME:-${HOME}/.config}/zsh by default.

# Add user path.
export PATH="${HOME}/.local/bin:${PATH}"

# Set XDG directories.
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"

# Set default applications.
export EDITOR="nvim"
export TERMINAL="wezterm"

# Save command history, 1000 is far from enough.
export HISTFILE="${ZDOTDIR}/.histfile"
export HISTSIZE=10000
export SAVEHIST=10000

# Setup input method (ibus).
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus

# export ZLE_RPROMPT_INDENT=0 # might cause problems, use with care
