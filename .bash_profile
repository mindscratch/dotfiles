# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f $HOME/git-completion.bash ]; then
	. ~/git-completion.bash
fi

# User specific environment and startup programs
export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --raw-control-chars --HILITE-UNREAD --tabs=4 --no-init --window=-4'

GOPATH=$HOME/go
JAVA_HOME=/usr/local/jdk-13.0.2

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$GOPATH/bin:$JAVA_HOME/bin

export PATH
