#!/usr/bin/env zsh

if [ -f ~/.zsh_aliases_general ]; then
    source ~/.zsh_aliases_general
fi

# legacy
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
