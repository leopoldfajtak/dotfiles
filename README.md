dotfiles
========

Dotfiles of my i3, tmux, zsh and vim configuration

i3wm (and st)
----------------

### Dependencies
The dark and bright wallpapers should be located in [.config](Home/.config/) as `wallpaper_bright.png` and `wallpaper_dark.png` respectively.
Other dependencies are:
- i3blocks, as well as some [default scripts](https://github.com/vivien/i3blocks-contrib) to be deployed in ~/.bin
- [adw-gtk3](https://github.com/lassekongo83/adw-gtk3), [adw-colors](https://github.com/lassekongo83/adw-colors), as well as Ferdi265's [fork](https://github.com/Ferdi265/adwaita-solarized-qt) of adwaita-qt. To make it work, we need qt5ct and qt6ct.
- [numix-solarized-gtk-theme](https://aur.archlinux.org/packages/gtk-theme-numix-solarized)
- [Solarized Colors and Cursors](https://www.gnome-look.org/p/1312499/) (download both files)
- Mononoki Fonts. Actually I'd love to use Inconsolata, but it has had rendering issues for [years](https://github.com/googlefonts/Inconsolata/issues/42), and the nerd font comes with it's own very weird [issues](https://github.com/ryanoasis/nerd-fonts/issues/509) 
- [Takao Gothic Font](https://aur.archlinux.org/packages/otf-takao) for japanese characters
- `unclutter` for removing the cursor when not used
- `st`. [my st build](https://github.com/leopoldfajtak/st)
- firefox (is set to start automatically)
- [Vundle](http://github.com/VundleVim/Vundle.vim) for vimrc
- `neovim`
- Some gvim package for accessing the system clipboard (`vim-gtk` on Debian) (althoug it's not clear whether this is still necessary with nvim)
- `picom` to if you don't like screen-tearing
- [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
- My `dmenu` configuration

### Configuration
- The accent color (here cyan is set) can be changed in `.config/x11/xresources_*`. The i3config file, as well as urxvt, take their color definitions from there. For the gtk theme, 
[gtk-3.0_settings_dark](Home/.config/gtk-3.0/settings_dark)
[gtk-3.0_settings_bright](Home/.config/gtk-3.0/settings_bright)
[gtkrc-2.0_bright](Home/.config/gtk-2.0/settings_bright)
[gtkrc-2.0_dark](Home/.config/gtk-2.0/settings_dark)
need to be adapted. Corresponding themes for each accent colour can be found in the numix-solarized-gtk-theme repository, as well as in the icon and cursor theme files.
- Don't forget to make daily cronjobs for `settheme dark` and `settheme bright`, respectively.
### Known issues
When the themechange occurs most applications need to be relaunched in order for it to take effect. The Window borders, and i3bar change immediately, though.

ZSH and tmux
------------
### First things first
Make zsh your default shell by running 
```shell
chsh -s $(which zsh)
```
### Dependencies
- `tmux`, and the [TPM](https://github.com/tmux-plugins/tpm) from the repository (not from apt). The `.tmux.conf` file is provided here
- `xclip`
- `zsh-syntax-highlighting`
### Files
- [zshrc](Home/.zshrc)

Font Rendering
--------------
### Dependencies
fonts-croscore fonts-crosextra-caladea fonts-crosextra-carlito
### Files
[local.conf](/etc/fonts/local.conf)

## Firefox
- [Surfingkeys](https://github.com/brookhong/Surfingkeys)
- [Ublock-Origin](https://github.com/gorhill/uBlock#ublock-origin)
- [Privacy-Badger](https://privacybadger.org)
- KeepassXC-browser
- [I don't care about cookies](https://www.i-dont-care-about-cookies.eu/)

Japanese Input
--------------
### Packages
`ibus-gtk3`, `ibus-clutter`, `fcitx-mozc`,

### Files
- [.xinitrc](Home/.xinitrc)

## Ranger
- also install (ueberzug)[htps://github.com/seebye/ueberzug]

### Further Notes
#### Libreoffice
install `ibreoffice-gtk` for ibus to work

#### Anki
Do not install with package manager, but download from website

Mail, Todo, Contacts, Calendar
------------------------------
### Dependencies
- `pass` to manage passwords for mail and calendar synchronisation, as well as `pinentry-gtk-2` for prompting the password
- `neomutt` for mail (with the dependencies according to lukesmithxyz's `muttwiz`) - make sure to install [urlview-xdg-git](https://aur.archlinux.net/urlview-xdg-git) instead of urlview.
- `vdirsyncer`, `khal`, `todoman`, `click-repl`  for task, calendar and contact management

Other programs
--------------
- `zathura` for pdfs

