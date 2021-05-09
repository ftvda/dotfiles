# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# ~/ clean up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
[ ! -d $XDG_CONFIG_HOME ] && mkdir -p $XDG_CONFIG_HOME
[ ! -d $XDG_CACHE_HOME ] && mkdir -p $XDG_CACHE_HOME

export PATH="$PATH:$HOME/.local/bin"
export EDITOR=nvim
export TERMINAL=st
export HISTFILE="$XDG_CACHE_HOME/bash/.bash_history"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_CACHE_HOME/X11/Xauthority"
#gnupg
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
# less
export LESSHISTFILE=-

export BRAVE="brave --app="'https://archlinux.org'
export SURF="surf "'https://archlinux.org'

#eval `/usr/local/bin/wcwidth-cjk --sh-init`

[[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]] && exec startx $XINITRC
