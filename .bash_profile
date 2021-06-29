# ~/.bash_profile

[ -f ~/.shrc ] && . ~/.shrc

# ~/ clean up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="/tmp/xdg_runtime_dir_$USER"
[ ! -d $XDG_CONFIG_HOME ] && mkdir -p $XDG_CONFIG_HOME
[ ! -d $XDG_CACHE_HOME ] && mkdir -p $XDG_CACHE_HOME
[ ! -d $XDG_DATA_HOME ] && mkdir -p $XDG_DATA_HOME

export PATH="$PATH:$HOME/.local/bin"
export EDITOR=nvim
export HISTFILE="$XDG_CACHE_HOME/sh_history"

export X11HOME="$XDG_CONFIG_HOME/X11"
export XINITRC="$X11HOME/xinitrc"
export XAUTHORITY="$XDG_CACHE_HOME/X11/Xauthority"
[ ! -d $X11HOME ] && mkdir -p $X11HOME
[ ! -d $XDG_CACHE_HOME/X11 ] && mkdir -p $XDG_CACHE_HOME/X11
#gnupg
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
# less
export LESSHISTFILE=-

export BROWSER="chrome"
[ -z $DISPLAY ] && [ $(tty) = /dev/ttyv0 ] && exec startx $XINITRC
