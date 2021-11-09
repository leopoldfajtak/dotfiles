# Default programs
export EDITOR=vim
export TERMINAL=st
export BROWSER=firefox
export READER=zathura
export OPENER=xdg-open

# ~ clean up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export SCRIPT_DIR="$HOME/.local/bin"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/python/pythonrc"

# other stuff
export QT_QPA_PLATFORMTHEME="gtk2"

# for personal use
export BIB="$HOME/dox/latex/uni.bib"
export BIBFILE="$HOME/dox/latex/uni.bib"
export PDFPATH="$HOME/sci"
export CLIPINW="xclip -i"
export CLIPOUT="xclip -o"

export LVAs="$HOME/Sync/Documents/Universität/LVAs/"
