## Alededorigo's dotfiles
<a href="https://www.twitter.com/alededorigo">![twitter](https://img.shields.io/twitter/follow/alededorigo?color=1da1f2&style=for-the-badge)</a> <a href="https://github.com/Alededorigo/dotfiles">![size](https://img.shields.io/github/languages/code-size/alededorigo/dotfiles?color=1fbad6&label=size&style=for-the-badge)</a> <a href="https://github.com/Alededorigo/fetchd/issues">![issues](https://img.shields.io/github/issues/alededorigo/fetchd?color=c9510c&style=for-the-badge)
</a>
These are configuration files for every software i use.
In every file there is its path.
Now i'm using Herbstluftwm and Polybar.

### Index:
* [Dependencies](https://github.com/Alededorigo/dotfiles#dependencies)
* Window Managers config:
  * [Herbstluftwm](https://github.com/Alededorigo/dotfiles/tree/main/.config/herbstluftwm)
  * [I3](https://github.com/Alededorigo/dotfiles/tree/main/.config/i3)
  * [Qtile](https://github.com/Alededorigo/dotfiles/tree/main/.config/qtile)
  * [Xmonad](https://github.com/Alededorigo/dotfiles/tree/main/.xmonad/xmonad.hs)
* Bars:
  * [Polybar](https://github.com/Alededorigo/dotfiles/tree/main/.config/polybar)
  * [I3blocks](https://github.com/Alededorigo/dotfiles/tree/main/.config/i3blocks)
  * [Yabar](https://github.com/Alededorigo/dotfiles/tree/main/.config/yabar/yabar.conf)
* Other software config:
  * [Bash](https://github.com/Alededorigo/dotfiles/tree/main/.bashrc)
  * [Xterm](https://github.com/Alededorigo/dotfiles/tree/main/.Xresources)
  * [Rofi](https://github.com/Alededorigo/dotfiles/tree/main/AD.rasi)
  * [Qutebrowser](https://github.com/Alededorigo/dotfiles/tree/main/.config/qutebrowser/config.py)
* Additional configs:
  * [Rofi](https://github.com/Alededorigo/dotfiles#rofi)
  * [Polybar](https://github.com/Alededorigo/dotfiles#polybar)
  * [Bspwm](https://github.com/Alededorigo/dotfiles#bspwm)

### Dependencies:
*When blank you need to compile it from source

| DEPENDENCY     | UBUNTU| FEDORA       | ARCH         |
| :------------- | :----------: | -----------: | -----------: |
| Herbstluftwm   | herbstluftwm | herbstluftwm | herbstluftwm |
| I3             | i3           | i3           | i3           |
| I3blocks       | i3blocks     | i3blocks     | i3blocks     |	
| Bspwm		 | bspwm        | bspwm        | bspwm 	      |
| Qtile          | qtile        | qtile        | qtile        |
| Xmonad         |              | xmonad       | xmonad       |
| Polybar
| Rofi           | rofi         |              | rofi         |
| Qutebrowser    | [official page](qutebrowser.org/INSTALL.html#on_debian_ubuntu) | qutebrowser | qutebrowser |
| Yabar		 | Need to build it					      |

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

For bspwm i use a custom color scheme called [Gruvbox](https://github.com/morhetz/gruvbox), so i changed some colors on the polybar config.
Simply sostitute the classic [config](https://github.com/alededorigo/dotfiles/tree/main/.config/polybar/config) with [bspwm-config](https://github.com/alededorigo/dotfiles/tree/main/.config/polybar/config-bspwm). Then rename that file in "config".

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
The theme i am using for rofi is [AD-Dracula.rasi](https://github.com/Alededorigo/dotfiles/tree/main/.config/rofi/themes/AD-Dracula.rasi). 
Place that file into rofi themes folder.
You can change the file name, but not the extension.
For changing the theme add "theme" flag to your launch command.
For example:
```sh
cp AD.rasi /usr/share/rofi/themes/<your file name>.rasi  # Replace "your file name" with you rile name
rofi -show run -theme <your file name>
``` 

