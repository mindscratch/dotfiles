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

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home
MVN_HOME=/Users/cwickesser/dev/apache-maven-3.6.3

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$JAVA_HOME/bin:$MVN_HOME/bin

export PATH
