# Dot

My dotfiles.

## Hierarchy

Each branch represents an independent rice, except master, which holds the files reused by multiple rices. In each branch,
- Contents in `@` goes to `/`, since `@` is the common name of the btrfs subvolume mounted to `/`;
- Contents in `etc` goes to `$XDG_CONFIG_HOME`;
- Contents in `usr` goes to the parent directory of `$XDG_DATA_HOME`.
