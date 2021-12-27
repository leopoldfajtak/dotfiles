export PATH=${PATH}:${SCRIPT_DIR}:/usr/sbin/:${HOME}/Jts/:${HOME}/portfolio/
# check if Xresources exists and if so rebuild X resources database
# [[ -f ${XDG_CONFIG_HOME}/x11/xresources ]] && xrdb ${XDG_CONFIG_HOME}/x11/xresources
[ -f ${SCRIPT_DIR}/settheme ] && [ -f ${SCRIPT_DIR}/current_theme ] &&
    bd=$(${SCRIPT_DIR}/current_theme); ${SCRIPT_DIR}/settheme $bd

# set editor
export VISUAL=vim
export EDITOR="$VISUAL"

# input method
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=\@im=fcitx
export GLFW_IM_MODULE=fcitx
export XIM_PROGRAM=/usr/bin/fcitx

# var for colortheme of qt apps
export QT_QPA_PLATFORMTHEME=gtk2

# start window manager
exec i3
