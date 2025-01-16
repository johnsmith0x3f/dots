
# Options {{{
# See https://zsh.sourceforge.io/Intro/intro_16.html for details.

# Make `$dirname` behave like `cd $dirname`.
setopt autocd
# Allow `cd dirname` to fallback to `cd $dirname`.
setopt cdablevars

# Do not save adjacent duplicate commands to $HISTFILE.
setopt histignoredups
# Do not save commands with leading spaces to $HISTFILE.
setopt histignorespace

# }}}

# Set alias.
alias ls="eza --icons=auto --group-directories-first"
alias grep="grep --color=auto"
alias pacman="pacman --color=auto"
alias yay="yay --color=auto"

alias f="fastfetch"
alias fetch="fastfetch"

# I use nvim btw.
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# Source plugins.
for plugin in ${ZDOTDIR}/plugins/*; do
	source "$plugin"
done

# Create plugins directory in cache if not exists.
plugins_dir="${XDG_CACHE_HOME}/zplugins"
[[ -d "$plugins_dir" ]] || mkdir -p "$plugins_dir"
# Load remote plugins from GitHub.
plugins=(
	"zsh-users/zsh-autosuggestions"
	"zsh-users/zsh-completions"
	"zsh-users/zsh-syntax-highlighting"
	"romkatv/powerlevel10k"
)
for plugin in $plugins; do
	# Clone the plugin if it does not exist.
	[[ -d "$plugins_dir/$plugin" ]] || git clone "https://github.com/$plugin.git" "$plugins_dir/$plugin" &>"/dev/null"
	# Add the plugin to fpath and source it.
	fpath+=( "$plugins_dir/$plugin" ) && source $plugins_dir/$plugin/${plugin#*/}.*zsh*
done
