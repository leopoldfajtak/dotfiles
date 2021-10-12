dotfiles
========

Dotfiles of my i3, tmux, zsh and vim configuration

i3wm (and st)
----------------

### Dependencies
The dark and bright wallpapers should be located in [.config](Home/.config/) as `wallpaper_bright.png` and `wallpaper_dark.png` respectively.
Other dependencies are:
- python3-pip and the astral package
- i3blocks, as well as some [default scripts](https://github.com/vivien/i3blocks-contrib) to be deployed in ~/.bin
- [numix-solarized-gtk-theme](https://github.com/Ferdi265/numix-solarized-gtk-theme) repository
- [Solarized Colors and Cursors](https://www.gnome-look.org/p/1312499/) (download both files)
- For qt5 apps, qt5-style-plugins will style them according to the gtk2 theme
- Symbola Fonts for st, until the coloured emoji bug is fixed  (`fonts-symbola` on Debian)
- [mononoki Nerd Font](http://www.nerdfonts.com/font-downloads) (Terminal font - see section about zsh)
- [Overpass Nerd Font](http://www.nerdfonts.com/font-downloads) (As system font)
- [Inconsolata Nerd Font]
- `unclutter` for removing the cursor when not used
- Takao Gothic fonts
- Because I always need it: [Fonts in Debian](https://wiki.debian.org/fonts)
- `x11-xkb-utils`, [xkblayout-state](https://github.com/nonpop/xkblayout-state) for keyboard layouts ([tutorial](https://www.codingunicorns.com/blog/2016/09/30/Language-indicator-in-i3wm/))
- `st`. [my st build](https://github.com/leopoldfajtak/st)
- firefox (is set to start automatically)
- [Vundle](http://github.com/VundleVim/Vundle.vim) for vimrc
- Some gvim package for accessing the system clipboard (`vim-gtk` on Debian)
- `picom` to if you don't like screen-tearing
- `betterlockscreen`

### Configuration
- For the theme switch to happen in the correct time, a `LocationInfo` has to be entered into the script [theming_job.py](Home/.config/themechange/theming_job.py) For this.
- The accent color (here cyan is set) can be changed in `.Xresources`. The i3config file, as well as urxvt, take their color definitions from there. For the gtk theme, 
[gtk-3.0_settings_dark](Home/.config/themechange/gtk-3.0_settings_dark)
[gtk-3.0_settings_bright](Home/.config/themechange/gtk-3.0_settings_bright)
[gtkrc-2.0_bright](Home/.config/themechange/gtkrc-2.0_bright)
[gtkrc-2.0_dark](Home/.config/themechange/gtkrc-2.0_dark)
need to be adapted. Corresponding themes for each accent colour can be found in the numix-solarized-gtk-theme repository, as well as in the icon and cursor theme files.
### Files
- [.xinitrc](Home/.xinitrc)
- [.Xresources](Home/.Xresources)
- [i3blocks.conf](Home/.config/i3blocks.conf)
- [config](Home/.config/i3/config)
- [Everything from themechange](Home/.config/themechange/)
### Known issues
When the themechange occurs most applications need to be relaunched in order for it to take effect. The Window borders, dmenu and i3bar change immediately, though.

ZSH and tmux
------------
### First things first
Make zsh your default shell by running 
```shell
chsh -s $(which zsh)
```
### Dependencies
- [mononoki Nerd Font](www.nerdfonts.com/font-downloads)
- [Inconsolata Nerd Font]
- `tmux`, and the [TPM](https://github.com/tmux-plugins/tpm) from the repository (not from apt). The `.tmux.conf` file is provided here
- `xclip`
- [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)
### Files
- [zshrc](Home/.zshrc)

Font Rendering
--------------
### Dependencies
fonts-croscore fonts-crosextra-caladea fonts-crosextra-carlito
### Files
[local.conf](/etc/fonts/local.conf)
### Original Source
Thanks to wilbert-vb on
[Reddit](https://www.reddit.com/r/debian/comments/5sookn/how_to_get_the_perfect_rendering_font_in_debian/)

## Firefox
- [Zenfox](https://addons.mozilla.org/en-US/firefox/addon/zen-fox/)
- [Surfingkeys](https://github.com/brookhong/Surfingkeys)
- [Ublock-Origin](https://github.com/gorhill/uBlock#ublock-origin)
- [Privacy-Badger](https://privacybadger.org)
- [https everywhere](https://www.eff.org/https-everywhere)
- KeepassXC-browser
- [I don't care about cookies](https://www.i-dont-care-about-cookies.eu/)

Japanese Input
--------------
### Packages
`ibus-gtk3`, `ibus-clutter`, `ibus-mozc`,

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
- `neomutt` for mail (with the dependencies according to lukesmithxyz's `muttwiz`)
- `vdirsyncer`, `khal`, `todoman`, `click-repl`  for task, calendar and contact management

Other programs
--------------
- `zathura` for pdfs

