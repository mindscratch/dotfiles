# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/bashrc
#fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#alias start_vnc="vncserver -geometry 1920x1080 -interface 127.0.0.1 -nolisten tcp -localhost :1"

alias su='sudo su -'
alias gcm='git commit -m'
alias gp='git push origin $(git_full_branch_name)'
alias ga='git diff --check && git add'
alias gnum='git rev-list --count master..'
alias ll='ls -al'

function git_full_branch_name {
	echo $(git symbolic-ref HEAD 2>/dev/null | awk -Frefs/heads/ {'print $NF'})
}

function _git_prompt() {
	local git_status="`git status -unormal 2>&1`"
	if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
		if [[ "$git_status" =~ nothing\ to\ commit ]]; then
			# no commits bu tstuff hasn't been pushed
			if [[ "$git_status" =~ Your\ branch\ is\ ahead ]]; then
				local ansi=41
			else
				# pristine local copy
				local ansi=42
			fi
		# untracked files only
		elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
			local ansi=43
		# anything else
		else
			local ansi=45
		fi
		if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
			branch=${BASH_REMATCH[1]}
			test "$branch" != master || branch=' '
		else
			# detached HEAD
			branch="(`git describe --all --contains --abbrev=4 HEAD 2> /dev/null || echo HEAD`)"
		fi
		echo -n '\e[0;37;'"$ansi"';1m'"$branch"'\e[0m '
	fi
}

function _prompt_command() {
	# colors
	YELLOW="\[\033[0;33m\]"
	PURPLE="\[\033[0;35m\]"
	RED="\[\033[0;31m\]"
	GREEN="\[\033[0;32m\]"
	LIGHT_GRAY="\[\033[0;37;00m\]"
	CYAN="\[\033[0;36m\]"

	GIT_PS1_SHOWDIRTYSTATE=true	# show unstage (*) or staged (+)
	GIT_PS1_SHOWSTASHSTATE=true	# show stashed ($)
	GIT_PS1_SHOWUNTRACKEDFILES=true	# show untracked (%)

	PS1="`_git_prompt`${CYAN}[\u@\h ${GREEN}\w${CYAN}]\n\$${LIGHT_GRAY} "
}

# PROMPT_COMMAND=_prompt_command
