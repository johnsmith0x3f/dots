
# Options {{{
# https://zsh.sourceforge.io/Intro/intro_16.html

# Make $dirname behave like cd $dirname.
setopt autocd
# Allow omitting the '$' in cd $dirname.
setopt cdablevars

# Do not allow breaking quoted string into multiple lines.
setopt cshjunkiequotes

# Do not save adjacent duplicate commands to $HISTFILE.
setopt histignoredups
# Do not save commands with leading spaces to $HISTFILE.
setopt histignorespace

# }}}
