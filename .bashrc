# ~/.bashrc

[[ $- != *i* ]] && return

# Theme
PS1="\[\e[1;31m\]\w\[\e[1;36m\] 六 \[\e[m\]"

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

# Misc
alias ls="ls -a --group-directories-first --color=auto"
alias ll="ls -algF --group-directories-first --color=auto"
alias l.='ls -a | grep "^."'
alias ..="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias vi="nvim"
alias cp="cp -i"
alias wg="wordgrinder"
alias fm="vifm"
alias rec="ffmpeg -s 1920x1080 -f x11grab -i :1"
alias lum="xrandr --output eDP-1 --brightness"
alias note="cd ~/notes/ && exa -lah"
alias or="bash ~/.scripts/or"
alias rc="ranger $HOME"
alias xprop="xprop | grep CLASS"
alias yt="ytfzf -t"
export MANPAGER="sh -c 'bat -l man -p'"

# Replacements
alias cat="bat"

# Typing errors
alias dc="cd"
alias gti="git"

# Grep
alias grep='grep --color=auto'

# Git
alias gitc="~/.scripts/git"

# Curl web apps
alias weather="curl http://wttr.in/your-city-here"
alias myp="curl ifconfig.co"
alias somenews="curl getnews.tech"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias parrot="curl parrot.live"

source "$HOME/.config/VARS"
