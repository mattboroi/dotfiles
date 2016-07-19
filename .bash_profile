export PATH=$PATH:$HOME/bin
source ~/resty

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias tmux="tmux -2"
# tmux 256color is for OSX
# alias tmux="TERM=screen-256color-bce tmux"

ip_lookup() {
    curl "http://ipinfo.io/$1/json"
}
alias ipl=ip_lookup
