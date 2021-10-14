export PATH=${PATH}:${SCRIPT_DIR}:/usr/sbin/:${HOME}/Jts/:${HOME}/portfolio/
# check if Xresources exists and if so rebuild X resources database
# [[ -f ${XDG_CONFIG_HOME}/x11/xresources ]] && xrdb ${XDG_CONFIG_HOME}/x11/xresources
[ -f ${SCRIPT_DIR}/settheme ] && [ -f ${SCRIPT_DIR}/current_theme ] &&
    bd=$(${SCRIPT_DIR}/current_theme); ${SCRIPT_DIR}/settheme $bd

# inupt method
# ibus-daemon -d -r
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus
export XIM_PROGRAM=/usr/bin/ibus

# set editor
export VISUAL=vim
export EDITOR="$VISUAL"

# var for colortheme of qt apps
export QT_QPA_PLATFORMTHEME=gtk2

# start window manager
exec i3
