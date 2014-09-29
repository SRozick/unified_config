
# use source ~/.bashrc to reload without logging out

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Use cdd to change directories and automatically ls -a on the target
cdd() { cd "$@" && ls -a -F -G; }
lss() { ls -a -F -G; }

# From hashrocket dotmatrix (github)
# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

# set variables for export command
VISUAL=vim
EDITOR="$VISUAL"
LESS="FRX"
RI="--format ansi -T"
PSQL_EDITOR='vim -c"setf sql"'

# set CLI colors
# see man ls for more details
CLICOLOR=1
export LSCOLORS="Cxcxhxdxbxegedabagacad"



# set prompt behavior
[ -z "$PS1" ] || stty -ixon

[ -z "$PS1" ] || export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ "

# hopefully set ls command to output dir by color
if [ -x /usr/bin/dircolors ]; then
    [ -r ~/.dircolors ] && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

#Hashrocket git status prompt (this did not work)
#if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
#  source '/usr/local/etc/bash_completion.d/git-completion.bash'
#fi
# [[ $- == *i* ]]   &&   . ~/git-prompt/git-prompt.sh

# Git Prompt configuration and sourcing
# see https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
GIT_PROMPT_START="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$"
GIT_PROMPT_END="\n\s:\v \033[01;00m\]\[\d \A\[\033[00m\] \$ "
source /usr/local/opt/bash-git-prompt/share/gitprompt.sh