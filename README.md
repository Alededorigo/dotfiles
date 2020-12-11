## Alededorigo's dotfiles
These are configuration files for every software i use.
In every file there is its path.

### Index:
* [Dependencies](https://github.com/Alededorigo/dotfiles#dependencies)
* Window Managers config:
  * [Herbstluftwm](https://github.com/Alededorigo/dotfiles/tree/main/.config/herbstluftwm)
  * [I3](https://github.com/Alededorigo/dotfiles/tree/main/.config/i3)
  * [Qtile](https://github.com/Alededorigo/dotfiles/tree/main/.config/qtile)
  * [Xmonad](https://github.com/Alededorigo/dotfiles/tree/main/.xmonad/xmonad.hs)
* Other software config:
  * [Polybar](https://github.com/Alededorigo/dotfiles/tree/main/.config/polybar)
  * [Bash](https://github.com/Alededorigo/dotfiles/tree/main/.bashrc)
  * [Xterm](https://github.com/Alededorigo/dotfiles/tree/main/.Xresources)
  * [Rofi](https://github.com/Alededorigo/dotfiles/tree/main/AD.rasi)
  * [Qutebrowser](https://github.com/Alededorigo/dotfiles/tree/main/.config/qutebrowser/config.py)
* Additional configs:
  * [Rofi](https://github.com/Alededorigo/dotfiles#rofi)
  * [Polybar](https://github.com/Alededorigo/dotfiles#polybar)

### Dependencies:
*When blank you need to compile it from source

| DEPENDENCY     | UBUNTU| FEDORA       | ARCH         |
| :------------- | :----------: | -----------: | -----------: |
| Herbstluftwm   | herbstluftwm | herbstluftwm | herbstluftwm |
| I3             | i3           | i3           | i3           |
| Qtile          | qtile        | qtile        | qtile        |
| Xmonad         |              | xmonad       | xmonad       |
| Polybar
| Rofi           | rofi         |              | rofi         |
| Qutebrowser    | [official page](qutebrowser.org/INSTALL.html#on_debian_ubuntu) | qutebrowser | qutebrowser |

### Configs:

#### Bspwm
Bspwm needs 2 directories, for its config and the keybindings.
First create a bspwm directory in .config.
Create a sxhkd folder in .config.
```sh
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
```
Clone [this](https://github.com/Alededorigo/dotfiles) repository and copy [bspwmrc](https://github.com/Alededorigo/dotfiles/tree/main/.config/bspwm/bspwmrc) into ~/.config/bspwm, and the same thing for [sxhkdrc](https://github.com/Alededorigo/dotfiles/tree/main/.config/sxhkd/sxhkdrc) (into ~/.config/sxhkd/sxhkdrc).

#### Polybar
First create a directory named scripts in the .config/polybar
```sh
mkdir ~/.config/polybar/scripts
```
For every polybar files you need to give it root permissions:
```sh
chmod +x ~/.config/polybar/config
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/herbstluftwm.sh
chmod +x ~/.config/polybar/scripts/env.sh
chmod +x ~/.config/polybar/scripts/redshift.sh
``` 
I use polybar for [bspwm](https://github.com/Alededorigo/dotfiles/tree/main/.config/bspwm), [i3](https://github.com/Alededorigo/dotfiles/tree/main/.config/i3), [herbstluftwm](https://github.com/Alededorigo/dotfiles/tree/main/.config/herbstluftw).

#### Rofi
The theme for rofi Is [AD.rasi](https://github.com/Alededorigo/dotfiles/free/main/AD.rasi). 
Place that file into /use/share/Rofi/themes/AD.rasi.
You can change the file name, but not the extension.
For changing the theme add "theme" flag to your launch command.
For example:
```sh
rofi -show run -theme AD
``` 

