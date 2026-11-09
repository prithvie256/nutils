[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias hx="helix"
alias nbrowse="zen-browser"

PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export PATH="$HOME/nutils/bin:$PATH"

data="$HOME/nutils-data"
[[ -f "$HOME/.config/nutils/env.conf" ]] && source "$HOME/.config/nutils/env.conf"

alias nu="cd $HOME/nutils"
alias nd='cd $data'
alias ndu='cd $data/nup'
alias ndg='cd $data/ngame'
alias ndm='cd $data/nmusic'
alias ndf='cd $data/nfile'

cd() {
  builtin cd "$@" && \

  clear && \

  ls -A --color=auto --group-directories-first -F
}

ls -A --color=auto --group-directories-first -F
