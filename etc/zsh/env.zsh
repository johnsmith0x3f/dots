# $ZDOTDIR is set to ${HOME}/.config/zsh in /etc/zsh/zshenv.

# Append user path.
export PATH="${PATH}:/${HOME}/.local/bin"

# Set XDG Base Directories.
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# Set default applications.
export PAGER="/bin/less"
export EDITOR="/bin/nvim"
export VISUAL="/bin/nvim"

# Configure command history, 1000 is far from enough.
export HISTFILE="${XDG_CACHE_HOME}/zhistfile"
export HISTSIZE=10000
export SAVEHIST=10000

# Configure input method preferences.
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export GLFW_IM_MODULE="ibus" # for kitty

# Set GTK2 config file location.
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"

# Set this to null to avoid partial line prompts.
export PROMPT_EOL_MARK=''

# export ZLE_RPROMPT_INDENT=0 # might cause problems, use with care
