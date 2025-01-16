#!/bin/zsh

# $ZDOTDIR is set to ${XDG_CONFIG_HOME:-${HOME}/.config}/zsh by default.

# Add user path.
export PATH="${HOME}/.local/bin:${PATH}"

# Set XDG directories.
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CACHE_HOME="${HOME}/.cache"

# Set default applications.
export EDITOR="nvim"

# Save command history, 1000 is far from enough.
export HISTFILE="${XDG_CACHE_HOME}/zhistfile"
export HISTSIZE=10000
export SAVEHIST=10000

# Setup input method (ibus).
export XMODIFIERS=@im=ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus

export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"

# Set this to null to avoid partial line prompts.
export PROMPT_EOL_MARK=''

# export ZLE_RPROMPT_INDENT=0 # might cause problems, use with care
