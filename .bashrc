# ~/.bashrc

# to display the branch name when in a git directory
source /usr/share/git/completion/git-prompt.sh
source /usr/share/git/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
PS1='[\u@\h \W]$(__git_ps1)\[\033[00m\]\\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim=nvim
alias brave='brave -force-device-scale-factor=0.8'

set -o vi

function share_history(){
	history -a
	history -c
	history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend
