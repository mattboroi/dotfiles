#!/usr/bin/env bash

dotfiles_source_directory=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ignore_file="$dotfiles_source_directory/.ignore"
ignore_files_array=""

# fix() { rm ../"$1"; mv "$1" ../"$1"; }; fix "$filename"

if [ -f $ignore_file ]; then

  while read -r line; do

    [[ $line = \#* ]] && continue # handle comments
    ignore_files_array+="$line"

  done < "$ignore_file"

else

  echo -e "Warning: a .ignore file is missing"

fi


## TODO
# automate git submodule update --init
# option: integrate with existing .vim/bundle
# option: git init and setup
# option: git push to backup and share


# check dotfiles directory existance; prevent overwriting
# check for existing symlinks
# create symlinks to dotfiles in home directory

# install fonts
# echo -e "${GREEN}$(fc-cache -vf ~/.fonts)${END}"
# echo -e "${CYAN}Reminder: update your terminal settings to use a powerline font${END}"
