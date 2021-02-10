# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ~/.zshrc

# Zsh theme
export ZSH="/home/ale/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k
source $ZSH/oh-my-zsh.sh

# Lang
export LANG=en_US.UTF-8

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
alias ll="ls -alF"
alias l.='ls -a | grep "^."'
alias ..="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias vi="vim"
alias cp="cp -i"
alias wg="wordgrinder"
alias fm="vifm"
alias rec="ffmpeg -s 1920x1080 -f x11grab -i :0"
alias lum="xrandr --output eDP-1 --brightness"
alias note="cd ~/notes/ && exa -lah"
alias or="bash ~/.scripts/or"
alias xprop="xprop | grep CLASS"

# Typing errors
alias dc="cd"
alias gti="git"

# Grep
alias grep='grep --color=auto'

# Git
alias gitc="source ~/.scripts/github.sh"

# Curl web apps
alias weather="curl http://wttr.in/Agordo"
alias myp="curl ifconfig.co"
alias somenews="curl getnews.tech"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias parrot="curl parrot.live"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
