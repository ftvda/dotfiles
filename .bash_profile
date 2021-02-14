# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# ~/ clean up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

export PATH="$PATH:$HOME/.local/bin"
export EDITOR=nvim
export TERMINAL=urxvt
export HISTFILE="$XDG_CACHE_HOME/bash/.bash_history"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_CACHE_HOME/X11/Xauthority"
#docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker/config.json"
#gnupg
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
# psql
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
export PSQL_HISTORY="$XDG_CONFIG_HOME/pg/psql_history"
# less
export LESSHSTFILE=-

export PATH="$PATH:$HOME/.gem/ruby/2.7.0/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/cuda-10.2/lib64"
export VTE_CJK_WIDTH=1

[[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]] && exec xinit $XINITRC
