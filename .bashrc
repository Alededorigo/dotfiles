#  _____ ____
# |  _  |    \
# |     |  |  |
# |__|__|____/
#
# Alededorigo .bashrc File
# Place this file into ~/.bashrc
# https://github.com/alededorigo/dotfiles
# https://gitlab.com/alededorigo/dotfiles
#

[[ $- != *i* ]] && return

# Theme
PS1="\[\e[1;36m\]\w \[\e[m\]\[\e[1;36m\]> \[\e[m\]"
# This line is for the colors in bspwm-gruvbox. For using this uncomment it and delete the previous.
# PS1="\[\e[1;33m\]\w \[\e[m\]\[\e[1;31m\]> \[\e[m\]"

# Extract alias
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Universal alias
alias ls="exa -al --color=always --group-directories-first"
alias lsa="exa -a --color=always --group-directories-first"
alias ll="exa -l --color=always --group-directories-first"
alias l.='exa -a | grep "^."'
alias ..="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."
alias doas="doas --"
alias vi="vim"
alias n="nnn"
alias vf="vifm"
alias nano="vim"
alias cp="cp -i"
alias df="df -h"

# Grep output
alias grep='grep --color=auto'

# Alias for Packages
alias pacman="sudo pacman"
alias pacsyu="sudo pacman -Syyu"
alias pacsy="sudo pacman -Syy"
alias orp='sudo pacman -Rns $(pacman -Qtdq)'

# Alias for git
alias add="git add -u"
alias adf="git add"
alias status="git status"
alias comm="git commit -m"
alias push="git push"

# Alias for config
alias hlconf="vim ~/.config/herbstluftwm/autostart"
alias polyconf="vim ~/.config/polybar/config"
alias piconf="vim /home/alepc/.config/picom/picom.conf"
alias viconf="vim /home/alepc/.vimrc"
alias bsconf="vim ~/.bashrc"
alias qonf="vim ~/.config/qtile/config.py"

alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
