# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

PATH=$HOME/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH
PATH=$(go env GOPATH)/bin:$PATH

# GNU programs installed with brew take precedence over pre-existing programs
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

if which pyenv > /dev/null; then
   eval "$(pyenv init -)"
   eval "$(pyenv virtualenv-init -)"
fi

. ~/.bashrc
