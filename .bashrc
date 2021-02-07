 /home/ale/.bashrc, 1280 bytes
 ---
[0;31m 1 [0m# ~/.bashrc
[0;31m 2 [0m
[0;31m 3 [0m[[ $- != *i* ]] && return
[0;31m 4 [0m
[0;31m 5 [0m# Theme
[0;31m 6 [0mPS1="[e[1;34m]w [e[1;30m]==> | [e[m]"
[0;31m 7 [0m
[0;31m 8 [0m# Extract alias
[0;31m 9 [0mex ()
[0;31m10 [0m{
[0;31m11 [0mif [ -f $1 ] ; then
[0;31m12 [0mcase $1 in
[0;31m13 [0m*.tar.bz2)   tar xjf $1   ;;
[0;31m14 [0m*.tar.gz)    tar xzf $1   ;;
[0;31m15 [0m*.bz2)       bunzip2 $1   ;;
[0;31m16 [0m*.rar)       unrar x $1   ;;
[0;31m17 [0m*.gz)        gunzip $1    ;;
[0;31m18 [0m*.tar)       tar xf $1    ;;
[0;31m19 [0m*.tbz2)      tar xjf $1   ;;
[0;31m20 [0m*.tgz)       tar xzf $1   ;;
[0;31m21 [0m*.zip)       unzip $1     ;;
[0;31m22 [0m*.Z)         uncompress $1;;
[0;31m23 [0m*.7z)        7z x $1      ;;
[0;31m24 [0m*.deb)       ar x $1      ;;
[0;31m25 [0m*.tar.xz)    tar xf $1    ;;
[0;31m26 [0m*.tar.zst)   unzstd $1    ;;
[0;31m27 [0m*)           echo "'$1' cannot be extracted via ex()" ;;
[0;31m28 [0mesac
[0;31m29 [0melse
[0;31m30 [0mecho "'$1' is not a valid file"
[0;31m31 [0mfi
[0;31m32 [0m}
[0;31m33 [0m
[0;31m34 [0m# Universal alias
[0;31m35 [0malias ls="ls -a --group-directories-first"
[0;31m36 [0malias lsa="ls -la --group-directories-first"
[0;31m37 [0malias ll="ls -l --group-directories-first"
[0;31m38 [0malias l.='ls -a | grep "^."'
[0;31m39 [0malias ..="cd .."
[0;31m40 [0malias .2="cd ../.."
[0;31m41 [0malias .3="cd ../../.."
[0;31m42 [0malias vi="vim"
[0;31m43 [0malias cp="cp -i"
[0;31m44 [0malias wg="wordgrinder"
[0;31m45 [0malias fm="vifm"
[0;31m46 [0malias rec="ffmpeg -s 1920x1080 -f x11grab -i :0"
[0;31m47 [0malias lum="xrandr --output eDP-1 --brightness"
[0;31m48 [0malias note="cd ~/notes/ && exa -lah"
[0;31m49 [0malias or="bash ~/.scripts/or"
[0;31m50 [0m#alias cat="~/dev/cat/cat.sh"
[0;31m51 [0m
[0;31m52 [0m# Grep output
[0;31m53 [0malias grep='grep --color=auto'
[0;31m54 [0m
[0;31m55 [0m# Alias for git
[0;31m56 [0malias gitc="source ~/.scripts/github.sh"
[0;31m57 [0m
[0;31m58 [0m# Alias for curl web apps
[0;31m59 [0malias weather="curl http://wttr.in/Belluno"
[0;31m60 [0malias myp="curl ifconfig.co"
[0;31m61 [0malias somenews="curl getnews.tech"
[0;31m62 [0malias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
[0;31m63 [0malias parrot="curl parrot.live"
[0;31m64 [0msource "$HOME/.cargo/env"
