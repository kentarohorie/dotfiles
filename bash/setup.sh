#!/bin/bash
set -ex

cd `dirname $0`

if [ ! -f plugins/git-completion.bash ]; then
  wget -O plugins/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

if [ -f ~/.bashrc ]; then
  export GIT_COMPLETION_PATH=$PWD/plugins/git-completion.bash

  grep -q 'source ~/.bashrc' ~/.bash_profile || echo 'source ~/.bashrc' >> ~/.bash_profile

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
  grep -q 'source `echo $GIT_COMPLETION_PATH`' ~/.bashrc || echo source `echo $GIT_COMPLETION_PATH` >> ~/.bashrc
  grep -q 'export HISTSIZE=9999' ~/.bashrc || echo 'export HISTSIZE=9999' >> ~/.bashrc
  grep -q 'shopt -u histappend' ~/.bashrc || echo 'shopt -u histappend' >> ~/.bashrc
  grep -q 'PROMPT_COMMAND="update_terminal_cwd;history -a;history -c;history -r;"' ~/.bashrc || echo 'PROMPT_COMMAND="update_terminal_cwd;history -a;history -c;history -r;"' >> ~/.bashrc
  grep -q 'HISTFILE=~/.bash_history' ~/.bashrc || echo 'HISTFILE=~/.bash_history' >> ~/.bashrc
  grep -q 'export FZF_DEFAULT_COMMAND="fd --type f"' ~/.bashrc || echo 'export FZF_DEFAULT_COMMAND="fd --type f"' >> ~/.bashrc

# else
  # touch ~/.bashrc
fi

# brew install for vim plugins.
# https://github.com/charmbracelet/glow
brew install glow

# https://github.com/junegunn/fzf#respecting-gitignore
brew install fd
