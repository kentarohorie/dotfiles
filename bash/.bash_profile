export PS1='\w $'
export LSCOLORS=gxfxcxdxbxegedabagacad
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

alias ls='ls -Ga'
alias mycl='sudo du -sh .[^.]*/ */ . | sort -hr'

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
source ~/.bashrc
eval "$(/opt/homebrew/bin/brew shellenv)"
