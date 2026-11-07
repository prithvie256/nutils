[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias hx="helix"
alias nbrowse="zen-browser"

PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export PATH="$HOME/nutils/bin:$PATH"
alias nu="cd $HOME/nutils"
alias nd="cd $HOME/nutils-data"
alias ng="cd $HOME/nutils-data/ngame"
alias nf="cd $HOME/nutils-data/nfile"
alias nm="cd $HOME/nutils-data/nmusic"
