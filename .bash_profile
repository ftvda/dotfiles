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

export CHROME="chrome --app="'https://anon.sx/?preferences=eJxlVUuP3DYM_jX1xZigSQ49-VCkKJKgwC66214FWqI9jCXRoeSZdX59qHnKk4MNiCL58fGRspBxZCFM3YgRBXzjIY4LjNh9g93X58azBY8dxgaWzJbD7DFj11BQHTMLv63d3-ATNgHznl33_PTy2iQYMCGI3Xe_N3mPATtOFqQRTIvPyXA0EY8mQ3-xdkxGL9kfUDoGPb5jGZuT1S7lVWPwPJJlh4edA5kacAeIFp25AF38UILeqxTjSFHzsosIRrsac8nwtw-f4gpgTFgSWT0daSJFTZQ3SgWqRxmNoaxHQeco66EknlSQ8EeE8KvbgfzpPvA3xKm-R-EjuVoyI0peejTmQA65mGFeA0evsdeKnnoBWdsiSZTqKw0_E0e9raU8YxScOd0DoqggxEu6px7ncEnPWrvLhyqOJabZQ9pXGfeU-8VOmC82pXDfF874EA4lXsRupBX2DQHmqQ0kwnKPsVg7yFDbDkJxIrBVJCON2mVIudYbmUePrUa9toEPSuoKbNReZApFdop9IjtBqktxat5NP_O0cua05wliJU8ZJM-F-w85K53VW_kXZ6CEqjWcG1uHA0Uqvdr07wHpWokH8TVMzMx-Y--0JeUbuT3Xp6pTGQzldrtlzHlgCr_b8rtU5O6n1g1rwMDKvCwQk9d94ba9QWwTD_kIgq0jQZu5MHEzMzUP6iI7svkHb5l-a8y1EHtQ6pdfxbqeedqk9P7jxz_eKs9X5Es_BoEAZYbwIbLElsC3AR1BDX5zdKbFnXgVx2Ce05a5c3GzoSRlD_0Fc3DCZfyvFrL064jhysj3bxWO5z5lfCfp1hyHsfb8_QgxP3LwwGvNzAbjdheusGfeGvX3rXHfnbNf1CB1T7pEzJ_Wopbkr6cvuqCPQhnV8HPZDGc1Pf1PYedpQrPnPOGabsBXR59fX59fKvMX9IP5EgeWAKeBUJkey3igSVbYl-heBXTbiPnv33_UVkca5WRb2FteEHt-vVZ9AbzyrtGRQQX7CaLuk7Y='


[ -z $DISPLAY ] && [ $(tty) = /dev/ttyv0 ] && exec startx $XINITRC
