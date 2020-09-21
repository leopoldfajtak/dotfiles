# check if Xresources exists and if so rebuild X resources database
[[ -f ~/.Xresources ]] && xrdb ~/.Xresources
# start window manager
exec i3
