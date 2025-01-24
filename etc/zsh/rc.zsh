
# Alias {{{
# See https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#Aliasing for details.

# I like colors.
alias ls="eza --icons=auto --group-directories-first"
alias grep="grep --color=auto"
alias pacman="pacman --color=auto"
alias yay="yay --color=auto"

# I fetch a lot.
alias f="fastfetch"
alias fetch="fastfetch"

# I use lazygit.
alias g="lazygit"

# I use nvim btw.
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# }}}

# Options {{{
# See https://zsh.sourceforge.io/Doc/Release/Options.html#Options for details.

# Make `$dirname` behave like `cd $dirname`.
setopt autocd
# Allow `cd dirname` to fallback to `cd $dirname`.
setopt cdablevars

# Do not save adjacent duplicate commands to $HISTFILE.
setopt histignoredups
# Do not save commands with leading spaces to $HISTFILE.
setopt histignorespace

# }}}

# Plugins {{{

# Source local plugins.
for plugin in ${ZDOTDIR}/plugins/*; do
	source "$plugin"
done

# Create remote plugins directory in cache if not exists.
plugins_dir="${XDG_DATA_HOME}/zsh/plugins"
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
	[[ -d "$plugins_dir/$plugin" ]] || git clone "https://github.com/$plugin.git" "$plugins_dir/$plugin" &>/dev/null
	# Add the plugin to fpath and source it.
	fpath+=( "$plugins_dir/$plugin" ) && source $plugins_dir/$plugin/${plugin#*/}.*zsh*
done

# }}}

