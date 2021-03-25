# ~/.bashrc

# to display the branch name when in a git directory
source /usr/share/git/completion/git-prompt.sh
source /usr/share/git/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
PS1='[\u@\h \W]$(__git_ps1)\[\033[00m\]\\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias brave='brave -high-dpi-support=1 -force-device-scale-factor=0.8'
alias w3m='env HOME=$XDG_CONFIG_HOME w3m'

set -o vi
