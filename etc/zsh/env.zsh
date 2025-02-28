# $ZDOTDIR is set to ${HOME}/.etc/zsh in /etc/zsh/zshenv.

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
export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export GTK_RC_FILES="${XDG_CONFIG_HOME}/gtk-1.0/gtkrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export XAUTHORITY="${XDG_RUNTIME_DIR}/Xauthority"
export XINITRC="${XDG_CONFIG_HOME}/X11/xinitrc"
export XSERVERRC="${XDG_CONFIG_HOME}/X11/xserverrc"

# Configure input method preferences.
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export GLFW_IM_MODULE="ibus" # for kitty

# Set Python history file location.

# Set this to null to avoid partial line prompts.
export PROMPT_EOL_MARK=''

