
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

