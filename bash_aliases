alias less="less -I --tabs=3"
alias screen="screen -e^Ff"
alias df="df -h"
alias f95="f95 -cpp -Wall -ffree-line-length-none -Wtabs"
if [[ "$(hostname)" != "pontus.cee.carleton.ca" ]]; then
	alias ls="ls --color=auto"
else
	alias ls="ls --color=auto"
fi
alias grep="grep --color=always"

# Env Can doesn't have zsh..
alias gst="git status -uno"
alias gd="git diff -w --color"

# A better test would be whether I'm running zsh..
if [[ "${TRUE_HOST}" != "" || "$(hostname)" == "amoran-VirtualBox" ]]; then
	alias ga="git add"
	alias gb="git branch"
	alias gba="git branch -vr"
	alias gco="git checkout"
	alias gcp="git cherry-pick"
	alias gl="git pull"
	alias gp="git push"
	alias gsta="git stash"
	alias gstai="git stash --keep-index"
	alias gstp="git stash pop"
	alias grh="git reset HEAD"

	if [[ -e $(which sqlite3 2>/dev/null) ]]; then
		alias sqlite="$(which sqlite3)"
	fi

	alias cmake="cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
fi
#alias glog="git log --follow --name-status"

if [[ -e ~/.bash_aliases.local ]]; then
	source ~/.bash_aliases.local
fi

alias cl="clear"

# vim : ts=3 sts=0 shiftwidth=3 noet ft=bash ffs=unix :
