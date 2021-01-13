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
PS1="\[\e[1;31m\]\w \[\e[m\]"

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
alias ls="ls -a --group-directories-first"
alias lsa="ls -la --group-directories-first"
alias ll="ls -l --group-directories-first"
alias l.='ls -a | grep "^."'
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
alias fet.sh="sh ~/.scripts/fet.sh"
alias cat="ccat"
alias cmatrix="cmatrix"
alias wg="wordgrinder"
alias fm="ranger"
alias note="cd ~/notes && ls -la"

# Grep output
alias grep='grep --color=auto'

# Alias for Packages
alias pacman="sudo pacman"
alias pacsyu="sudo pacman -Syyu"
alias pacsy="sudo pacman -Syy"
alias orp='sudo pacman -Rns $(pacman -Qtdq)'
alias pkg="sudo apt install"

# Alias for git
alias add="git add -u"
alias adf="git add"
alias status="git status"
alias comm="git commit -m"
alias push="git push"
alias gitc="sh ~/.scripts/github.sh"

# Alias for config
alias honf="vim ~/.config/herbstluftwm/autostart"
alias ponf="vim ~/.config/polybar/config"
alias piconf="vim /home/alepc/.config/picom/picom.conf"
alias viconf="vim /home/alepc/.vimrc"
alias bsconf="vim ~/.bashrc"
alias qonf="vim ~/.config/qtile/config.py"

# Alias for curl web apps
alias weather="curl http://wttr.in/Belluno"
alias myp="curl ifconfig.co"
alias somenews="curl getnews.tech"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias parrot="curl parrot.live"
