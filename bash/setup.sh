cd `dirname $0`
if [ ! -f plugins/git-completion.bash ]; then
  wget -O plugins/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

if [ -f ~/.bashrc ]; then
  GIT_COMPLETION_PATH=$PWD/plugins/git-completion.bash
  grep -q $GIT_COMPLETION_PATH ~/.bashrc || echo source $GIT_COMPLETION_PATH >> ~/.bashrc
  grep -q source ~/.bashrc ~/.bash_profile || echo source ~/.bashrc >> ~/.bash_profile
# else
  # touch ~/.bashrc
fi
