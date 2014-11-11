#!/usr/bin/env zsh

if [ -f ~/.zsh_aliases_general ]; then
    source ~/.zsh_aliases_general
fi
if [ $(lsb_release -is) = "ManjaroLinux" ] && [ -f ~/.zsh_aliases_general_manjaro ]; then
    source ~/.zsh_aliases_general_manjaro
fi
if [ $(lsb_release -is) = "Ubuntu" ] && [ -f ~/.zsh_aliases_general_ubuntu ]; then
    source ~/.zsh_aliases_general_ubuntu
fi

# legacy
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
