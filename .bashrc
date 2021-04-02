# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# aliases
alias ll='ls -lthr'
alias la='ls -lthra'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# User specific aliases and functions
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib:/usr/lib:/usr/lib64

# colors and special characters
RED="\[\e[38;5;196m\]"
ORANGE="\[\e[38;5;215m\]"
WHITE="\[\e[38;5;15m\]"
YELLOW="\[\e[38;5;11m\]"
BLUE="\[\e[38;5;39m\]"
GREEN="\[\e[38;5;192m\]"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ ( \1)/'
}

export PS1=" $RED[ $ORANGE\u$RED@$GREEN\h $BLUE\W$YELLOW\$(parse_git_branch) $RED] $WHITE$ "

