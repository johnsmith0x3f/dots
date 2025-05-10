#!/usr/bin/env bash

# TODO: Replace stow with a custom function.

echo -e "\033[1;32mSyncing conf files...\033[0;39m"
stow -nv -d ./etc -t "${XDG_CONFIG_HOME}" . 2>&1 | head -n -1
echo -en "\033[1;32mContinue? [Y/n]\033[0;39m " && read answer && [[ "$answer" != "n"* ]] && stow -d ./etc -t "${XDG_CONFIG_HOME}" .
echo

echo -e "\033[1;32mSyncing data files...\033[0;39m"
stow -nv -d ./usr -t "${XDG_DATA_HOME%/*}" . 2>&1 | head -n -1
echo -en "\033[1;32mContinue? [Y/n]\033[0;39m " && read answer && [[ "$answer" != "n"* ]] && stow -d ./usr -t "${XDG_DATA_HOME%/*}" .
echo

echo -e "\033[1;32mSyncing root files...\033[0;39m"
stow -nv -d ./@ -t / . 2>&1 | head -n -1
echo -en "\033[1;32mContinue? [Y/n]\033[0;39m " && read answer && [[ "$answer" != "n"* ]] && sudo stow -d ./@ -t / .

unset answer
