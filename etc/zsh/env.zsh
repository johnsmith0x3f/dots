
# $ZDOTDIR is set to ${HOME}/.config/zsh in /etc/zsh/zshenv.

# Append user path.
export PATH="${PATH}:${HOME}/.usr/bin"

# Set XDG Base Directories.
export XDG_CONFIG_HOME="${HOME}/.etc"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.usr/share"
export XDG_STATE_HOME="${HOME}/.usr/state"

# Set default applications.
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# Configure command history, 1000 is far from enough.
export HISTFILE="${XDG_DATA_HOME}/zsh/history"
export HISTSIZE=10000
export SAVEHIST=10000

# Clean up your $HOME!
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# Configure input method preferences.
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export GLFW_IM_MODULE="ibus" # for kitty

# Set Python history file location.
export PYTHON_HISTORY="${XDG_DATA_HOME}/python/history"

# Set GTK2 config file location.
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"

# Set this to null to avoid partial line prompts.
export PROMPT_EOL_MARK=''

