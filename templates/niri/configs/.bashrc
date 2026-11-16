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

alias ndgn='cd $data/ngame/games/native'
alias ndgw='cd $data/ngame/games/windows'
alias ndgp='cd $data/ngame/games/ports'
alias ndge='cd $data/ngame/games/emulated'

alias ndm='cd $data/nmusic'
alias ndf='cd $data/nfile'

green() {
  echo -e "\033[32m$1\033[0m"
}

cd() {
  builtin cd "$@"
  clear
  
  green "$(pwd)"
  echo
  
  (
    fd -d 1 -t d --color=always
    fd -d 1 -t f --color=always
    fd -d 1 -t l --color=always
    fd -d 1 -t d -H '^\.' --color=always
    fd -d 1 -t f -H '^\.' --color=always
    fd -d 1 -t l -H '^\.' --color=always
  ) | pr -4 -t -s$'\t' | column -t -s $'\t' -o '    '

  echo
}

.() {
  clear
  cd .
}

..() {
  clear
  cd ..
}
