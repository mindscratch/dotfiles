# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f $HOME/git-completion.bash ]; then
	. ~/git-completion.bash
fi

# User specific environment and startup programs
GOPATH=$HOME/go

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$GOPATH/bin

export PATH
