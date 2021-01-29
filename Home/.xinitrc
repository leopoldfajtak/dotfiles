# check if Xresources exists and if so rebuild X resources database
[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

# inupt method
ibus-daemon -d -r
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

export PATH=$PATH:/snap/bin/:~/.local/bin/:/usr/sbin/

# set editor
export VISUAL=vim
export EDITOR="$VISUAL"

# start window manager
exec i3
