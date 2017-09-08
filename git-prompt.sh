BLACK="\[\e[00;30m\]"
DARY_GRAY="\[\e[01;30m\]"
RED="\[\e[00;31m\]"
BRIGHT_RED="\[\e[01;31m\]"
GREEN="\[\e[00;32m\]"
BRIGHT_GREEN="\[\e[01;32m\]"
BROWN="\[\e[00;33m\]"
YELLOW="\[\e[01;33m\]"
BLUE="\[\e[00;34m\]"
BRIGHT_BLUE="\[\e[01;34m\]"
PURPLE="\[\e[00;35m\]"
LIGHT_PURPLE="\[\e[01;35m\]"
CYAN="\[\e[00;36m\]"
BRIGHT_CYAN="\[\e[01;36m\]"
LIGHT_GRAY="\[\e[00;37m\]"
WHITE="\[\e[01;37m\]"
ENDCOLOR="\[\e[0;0m\]"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' | tr -d '[:space:]'
}

export PS1="${ENDCOLOR}${PURPLE}\$(parse_git_branch)${ENDCOLOR}\n${GREEN}\u@\h${BRIGHT_BLUE}:\W${ENDCOLOR}\\$ "