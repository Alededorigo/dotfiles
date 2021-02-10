![dotfiles](https://res.cloudinary.com/dn3cdvdix/image/upload/v1609584148/dotfiles_mkcg0c.png)

![reposize](https://img.shields.io/github/repo-size/alededorigo/dotfiles?color=%2358d0f4&style=for-the-badge) ![licence](https://img.shields.io/github/license/alededorigo/dotfiles?color=%23cd58f4&style=for-the-badge) ![lastcommit](https://img.shields.io/github/last-commit/alededorigo/dotfiles?color=9ce590&style=for-the-badge)

<br>

These are configuration files for every software i use.
In every file there is its path.

<br>

### <h1 align="center">Now i use</h1>

* OS: [Arch](https://archlinux.org/)

* Shell: Bash

* Window Manager: [i3wm](https://i3wm.org/)

* Display Manager: Switching to SLiM

* Browser with [Minimal-functional-fox theme](https://github.com/mut-ex/minimal-functional-fox) (and some customizations)

* File manager: Thunar, Ranger

* Terminal emulator: [st](https://st.suckless.org/)

* Text editor: Vim

* Launcher: Rofi

* Notification daemon: Dunst

<details >
    <summary><strong><h1 align="center">Screenshots</h1></strong></summary>
<img src="https://res.cloudinary.com/adwebsite/image/upload/v1612782415/dotfiles/screen1_yxrhl3.png">
<img src="https://i.redd.it/vmpl8ft5hnc61.png">
</details>


### <h1 align="center">Index</h1>
* [Dependencies](https://github.com/Alededorigo/dotfiles#dependencies)
* [Fonts](https://github.com/Alededorigo/dotfiles#fonts)
* <details>
    <summary><strong>TUI Software:</strong></summary>
    <ul>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/git">git</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/htop">htop</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.moc">moc</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/blob/main/.Xresources">xterm & urxvt</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/blob/main/.bashrc">bash</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/blob/main/.vimrc">vim</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/blob/main/.config/procps/toprc">top</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/blob/main/.config/ranger/">ranger</a>
      </li>
    </ul>
  </details>
* <details >
    <summary><strong>GUI Software:</strong></summary>
    <ul>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/dunst">dunst</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/zathura">zathura</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/mpv">mpv</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/kitty">kitty</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/thunar">thunar</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/rofi">rofi</a>
      </li>
    </ul>
  </details>
* <details open>
    <summary><strong>Window managers:</strong></summary>
    <ul>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/bspwm">bspwm</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/sxhkd">sxhkd</a> (keybindings for bspwm)
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/herbstluftwm">herbstluftwm</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/i3">i3</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/qtile">qtile</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.xmonad">xmonad</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/blob/main/.spectrwm.conf">spectrwm</a>
      </li>
    </ul>
  </details>
* <details open>
    <summary><strong>Panels:</strong></summary>
    <ul>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/i3blocks">i3blocks</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/polybar">polybar</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.config/yabar">yabar</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.lemonbar">lemonbar</a>
      </li>
    </ul>
  </details>
* <details>
    <summary><strong>Other:</strong></summary>
    <ul>
      <li>
        <a href="#wallpapers">wallpapers</a>
      </li>
      <li>
        <a href="https://github.com/Alededorigo/dotfiles/tree/main/.scripts">scripts</a>
      </li>
    </ul>
  </details>


<br>
<br>


<details open>
  <summary><strong><h1 align="center">Dependencies</h1></strong></summary>

  <br>

  ###### <h2 align="center">Debian/Ubuntu</h2>
  ```sh
  sudo add-apt-repository ppa:kgilmer/speed-ricer
  sudo apt-get update
  sudo apt install i3-gaps rofi dmenu i3status kitty herbstluftwm spectrwm xmonad xmobar i3blocks lemonbar yabar dunst xterm qutebrowser vim nvim emacs
  ```

  ### Bspwm & sxhkd
  Compile it from source

  ### Compositor manager (Picom)

  ```sh
  # After you added "speed-ricer" repository you can install picom using apt
  sudo apt install picom
  # If you prefer you can compile it from source
  ```

  <br>

  ###### <h2 align="center">Fedora</h2>
  ```sh
  sudo dnf install i3-gaps rofi dmenu i3status kitty herbstluftwm spectrwm xmonad xmobar i3blocks lemonbar yabar dunst xterm qutebrowser bspwm vim nvim emacs
  ```

  ###### <h2 align="center">Arch</h2>
  ```sh
  sudo pacman -S i3-gaps rofi dmenu i3status kitty herbstluftwm spectrwm xmonad xmobar i3blocks lemonbar yabar dunst xterm qutebrowser bspwm vim nvim emacs
  # Make sure yay is your AUR helper
  yay -S polybar picom
  ```

  </details>

<br>
<br>

<details>
  <summary><strong><h1 align="center">Fonts</h1></strong></summary>
  <br>
  These are all fonts i used in my dotfiles.

  | FONT           | UBUNTU       | FEDORA       | ARCH         |
  | :------------- | :----------: | -----------: | -----------: |
  | Fira Code      |fonts-firacode|fira-code-fonts| ttf-fira-code|
  | IBM Plex       |              |ibm-plex-sans-font| ttf-ibm-plex|
  | Source Code Pro| [Official page](https://askubuntu.com/questions/193072/how-to-use-the-adobe-source-code-pro-font)     | adobe-source-code-pro-fonts | adobe-source-code-pro-fonts |
  | Tamsyn         | [Official page](https://www.fial.com/~scott/tamsyn-font/)                                                                                                         |
</details>

<br>
<br>

### <h1 align="center">Configs</h1>

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
First create a directory named scripts in .config/polybar
```sh
mkdir ~/.config/polybar/scripts
```
For every polybar file you need to give it permissions:
```sh
chmod +x ~/.config/polybar/config
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/herbstluftwm.sh
chmod +x ~/.config/polybar/scripts/env.sh
chmod +x ~/.config/polybar/scripts/redshift.sh
```
I use polybar for [bspwm](https://github.com/Alededorigo/dotfiles/tree/main/.config/bspwm), [herbstluftwm](https://github.com/Alededorigo/dotfiles/tree/main/.config/herbstluftw).

#### DuckDuckGo
Open [this](https://duckduckgo.com/?kae=t&ks=m&kw=s&ku=1&kt=Fira+Code&km=l&k7=171a1f&kj=171a1f&k9=53e2ae&kaa=985eff&k21=171a1f&k8=ffffff&kx=985eff) URL.

### <h1 align="center">Wallpapers</h1>
Here's some wallpapers i use.

* 1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Link](https://drive.google.com/file/d/1kl-gvq1M9MaXQU_2K9l2lkq02iIcbf5h/view)
* 2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Link](https://drive.google.com/file/d/1kl-gvq1M9MaXQU_2K9l2lkq02iIcbf5h/view)
* 3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Link](https://drive.google.com/file/d/1vFbB3CM1SVePuN4r_y70iTSeY65oeLUe/view)
* 4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Made myself](https://github.com/Alededorigo/dotfiles/blob/main/walls/1.jpg)

### <h1 align="center">Credits</h1>
[fet.sh](https://github.com/6gk/fet.sh)
