
# Options {{{
# See https://zsh.sourceforge.io/Intro/intro_16.html for details.

# Make `$dirname` behave like `cd $dirname`.
setopt autocd
# Allow `cd dirname` to behave like `cd $dirname`.
setopt cdablevars

# Do not allow breaking quoted string into multiple lines.
setopt cshjunkiequotes

# Do not save adjacent duplicate commands to $HISTFILE.
setopt histignoredups
# Do not save commands with leading spaces to $HISTFILE.
setopt histignorespace

# }}}

# Source plugins.
for plugin in ${ZDOTDIR}/plugins/*; do
	source "$plugin"
done

# Create plugins directory in cache.
plugins_dir="${XDG_CACHE_HOME}/zplugins"
[[ -d "$plugins_dir" ]] || mkdir -p "$plugins_dir"
# Load remote plugins from GitHub.
plugins=( "zsh-users/zsh-syntax-highlighting" )
for plugin in $plugins; do
	# Clone the plugin if it does not exist.
	[[ -d "$plugins_dir/$plugin" ]] || git clone "https://github.com/$plugin.git" "$plugins_dir/$plugin" &>"/dev/null"
	# Add the plugin to fpath and source it.
	fpath+=( "$plugins_dir/$plugin" ) && source "$plugins_dir/$plugin/${plugin#*/}.plugin.zsh"
done
