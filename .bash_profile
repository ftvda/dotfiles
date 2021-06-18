# ~/.bash_profile

[ -f ~/.shrc ] && . ~/.shrc

# ~/ clean up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
[ ! -d $XDG_CONFIG_HOME ] && mkdir -p $XDG_CONFIG_HOME
[ ! -d $XDG_CACHE_HOME ] && mkdir -p $XDG_CACHE_HOME

export PATH="$PATH:$HOME/.local/bin"
export EDITOR=vi
export TERMINAL=st
export HISTFILE="$XDG_CACHE_HOME/.sh_history"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_CACHE_HOME/X11/Xauthority"
[ ! -d $XDG_CONFIG_HOME/X11 ] && mkdir -p $XDG_CONFIG_HOME/X11
[ ! -d $XDG_CACHE_HOME/X11 ] && mkdir -p $XDG_CACHE_HOME/X11
#gnupg
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
# less
export LESSHISTFILE=-

if [ $(uname) = 'FreeBSD' ]; then 
	export BROWSER="chrome"
	[ -z $DISPLAY ] && [ $(tty) = /dev/ttyv0 ] && exec startx $XINITRC
else
	export BROWSER="brave"
	[ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ] && exec startx $XINITRC
fi
