
# Edit current command with $EDITOR.
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Alias {{{
# See https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#Aliasing for details.

# I like better commands.
alias cat="bat --plain --paging=never"
alias ls="eza --icons=auto --group-directories-first"
alias grep="grep --color=auto"

# I fetch a lot.
alias f="fastfetch"

# I use lazygit.
alias g="lazygit"
# I also use plain git.
alias ga="git add" # my barbaric yawp over the files of the commits
alias gaa="git add --all" # yawp harder to commit all the files
alias gb="git branch"
alias gbc="git checkout -b" # branch then checkout
alias gc="git commit"
alias gca="git commit --amend"
alias gf="git fetch"
alias gpl="git pull"
alias gps="git push"
alias grm="git remote"
alias grma="git remote add"
alias grmr="git remote remove"
alias grmv="git remote rename"
alias grms="git remote set-url"
alias grs="git restore"
alias grss="git restore --staged"
alias gs="git status"

# I use nvim btw.
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# I use Zed (sometimes) btw.
alias zed="zeditor"

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
for plugin in $ZDOTDIR/plugins/*.zsh; do
	source "$plugin"
done

# Create remote plugins directory.
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
	if [[ ! -d "$plugins_dir/$plugin" ]]; then
		echo "\x1B[1;32mPlugin $plugin not installed, cloning...\x1B[0m"
		git clone -q "https://github.com/$plugin.git" "$plugins_dir/$plugin"
		echo "\x1B[1;32mDone.\x1B[0m"
	fi
	# Add the plugin to fpath and source it.
	fpath+=( "$plugins_dir/$plugin" ) && source $plugins_dir/$plugin/${plugin#*/}.*zsh*
done

# }}}
