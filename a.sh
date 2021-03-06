set -o vi       #vi mode
alias ls="ls --color=auto"
alias rm='rm -i'
alias cp='cp -i'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

PS1='[\u@\H \[\033[31m\]UR VPS\[\033[0m\]!\W]\$ '
HISTFILESIZE=
HISTSIZE=
HISTTIMEFORMAT="[%F %T] "
HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
HISTCONTROL=ignorespace
export HISTFILESIZE HISTSIZE HISTTIMEFORMAT HISTIGNORE HISTCONTROL

#function
snet() { netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'; }
wiki() { dig +short txt $1.wp.dg.cx; }
ip2dec () { local a b c d ip=$@ ; IFS=. read -r a b c d <<< "$ip"; printf '%d\n' "$((a * 256 ** 3 + b * 256 ** 2 + c * 256 + d))"; }


