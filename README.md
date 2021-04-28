# dotfiles
Dotfiles of my i3, urxvt, zsh and vim configuration

## i3wm (and urxvt)
### Dependencies
The dark and bright wallpapers should be located in [.config](Home/.config/) as `wallpaper_bright.png` and `wallpaper_dark.png` respectively.
Other dependencies are:
- python3-pip and the astral package
- i3blocks
- [numix-solarized-gtk-theme](https://github.com/Ferdi265/numix-solarized-gtk-theme) repository
- [Solarized Colors and Cursors](https://www.gnome-look.org/p/1312499/) (download both files)
- For qt5 apps, qt5-style-plugins will style them according to the gtk2 theme
- [mononoki Nerd Font](www.nerdfonts.com/font-downloads) (Terminal font - see section about zsh)
- [Overpass Nerd Font](www.nerdfonts.com/font-downloads) (As system font)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (zsh theme)
- `x11-xkb-utils`, [xkblayout-state](https://github.com/nonpop/xkblayout-state) for keyboard layouts ([tutorial](https://www.codingunicorns.com/blog/2016/09/30/Language-indicator-in-i3wm/))
- `kitty` (is set as standard terminal)
- firefox (is set to start automatically)
- [Pathogen](http://github.com/tpope/vim-pathogen) for vimrc
- [Vundle](http://github.com/VundleVim/Vundle.vim) for vimrc
- `pass` to manage passwords for mail and calendar synchronisation
- `neomutt` for mail
- `vdirsyncer`, `khal`, `todoman` for task, calendar and contact management
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

Theme change does not currently affect kitty
## ZSH
### Dependencies
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [mononoki Nerd Font](www.nerdfonts.com/font-downloads)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (zsh theme)
- [vi-mode](https://github.com/Nyquase/vi-mode)
### Files
- [zshrc](Home/.zshrc)

## Font Rendering
### Dependencies
fonts-croscore fonts-crosextra-caladea fonts-crosextra-carlito
### Files
[local.conf](/etc/fonts/local.conf)
### Original Source
Thanks to wilbert-vb on
[Reddit](https://www.reddit.com/r/debian/comments/5sookn/how_to_get_the_perfect_rendering_font_in_debian/)

## Firefox
[Zenfox](https://addons.mozilla.org/en-US/firefox/addon/zen-fox/)

### Japanese Inupt
The
`ibus-mozc` package should do everything we need

### Further Notes
#### Libreoffice
install ibreoffice-gtk for ibus to work

#### Anki
Do not install with package manager, but download from website
