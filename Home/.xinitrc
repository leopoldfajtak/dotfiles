# check if Xresources exists and if so rebuild X resources database
[[ -f ~/.Xresources ]] && xrdb ~/.Xresources

# inupt method
# ibus-daemon -d -r
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus
export XIM_PROGRAM=/usr/bin/ibus

export PATH=$PATH:/snap/bin/:~/.local/bin/:/usr/sbin/:$HOME/Jts/:$HOME/portfolio/


# set editor
export VISUAL=vim
export EDITOR="$VISUAL"

# set location of config files
export XDG_CONFIG_HOME=~/.config

# var for colortheme of qt apps
export QT_QPA_PLATFORMTHEME=gtk2

# start window manager
exec i3
