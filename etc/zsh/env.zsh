# $ZDOTDIR is set to ${HOME}/.etc/zsh in /etc/zsh/zshenv.

# Set default applications.
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# Configure command history, 1000 is far from enough.
export HISTFILE="${XDG_DATA_HOME}/zsh/history"
export HISTSIZE=100000
export SAVEHIST=100000

# Clean up your $HOME!
export ANDROID_HOME="${XDG_DATA_HOME}/android/SDK"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export GDBHISTFILE="${XDG_DATA_HOME}/gdb/history"
export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export GTK_RC_FILES="${XDG_CONFIG_HOME}/gtk-1.0/gtkrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc"
export PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"
export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"
export XAUTHORITY="${XDG_RUNTIME_DIR}/Xauthority"
export XINITRC="${XDG_CONFIG_HOME}/X11/xinitrc"
export XSERVERRC="${XDG_CONFIG_HOME}/X11/xserverrc"

# Set this to null to avoid partial line prompts.
export PROMPT_EOL_MARK=''

# Use fcitx5 for input method.
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"

# Append user path.
usr_paths=(
	"${HOME}/.usr/bin"
	"${XDG_DATA_HOME}/cargo/bin"
)
for dir in $usr_paths; do
	[[ "${PATH}" != *"$dir"* ]] && export PATH="${PATH}:$dir"
done
# Unset when done.
unset dir usr_paths
