#!/usrbin/env zsh

# customized colors
eval my_gray='$FG[008]'
eval my_lightgray='$FG[151]'
eval my_orange='$FG[202]'
eval my_red='$FG[001]'
eval my_green='$FG[002]'
eval my_black='$FG[000]'
PROMPT_VCS_INFO_COLOR=$FG[242]

# Load required modules.
autoload -U add-zsh-hook
autoload -Uz vcs_info

# Add hook for calling vcs_info before each command.
add-zsh-hook precmd vcs_info

# Set vcs_info parameters.
zstyle ':vcs_info:*' enable hg bzr git
zstyle ':vcs_info:*:*' check-for-changes true # Can be slow on big repos.
zstyle ':vcs_info:*:*' unstagedstr '!'
zstyle ':vcs_info:*:*' stagedstr '+'
zstyle ':vcs_info:*:*' actionformats "%S" "[%{$FG[008]%}%s: %{$fg[green]%}%b%{$reset_color%}%{$fg[red]%}%u%c%{$reset_color%} (%a)]"
zstyle ':vcs_info:*:*' formats "%S" "[%{$FG[008]%}%s: %{$fg[green]%}%b%{$reset_color%}%{$fg[red]%}%u%c%{$reset_color%}]"
zstyle ':vcs_info:*:*' nvcsformats "%~" ""


# left prompt
# host@user:path %
PROMPT=$'%{$my_gray%}%B%n%b%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%}:%B%{$fg[green]%}${PWD/#$HOME/~}%{$reset_color%}%b %# '

# right prompt
# last command result; vcs; time
RPROMPT=$'%(0?. .%{$fg[red]%}✗ %{$reset_color%})$vcs_info_msg_1_ [%{\e[1;30m%}%T%{\e[0m%}]'

