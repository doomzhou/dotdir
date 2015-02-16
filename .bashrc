set -o vi
alias tor="tor -f /etc/tor/torrc Socks5Proxy $1"
alias ls="ls --color=auto"
alias rm='rm -i'
alias cp='cp -i'
alias cd='cdls'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

PATH=$HOME/bin:/opt/python2.7/bin/:$PATH:/home/doom/.gem/ruby/2.0.0/bin:
EDITOR="vim"
PS1="\[\033[1;33;1m\][\[\033[0;32;1m\]\u@\h \[\033[1;33;1m\]\W\[\033[1;33;1m\]]\[\033[1;33;1m\]\\$\[\033[0m\]"
HISTFILESIZE=
HISTSIZE=
HISTTIMEFORMAT="[%F:%T] "
export PATH HISTIMEFORMAT PS1 EDITOR
export PYTHONPATH='/home/doom/workplace/www/src1/icrawler:/opt/python2.7/lib/python2.7/site-packages/:/home/doom/workplace/www/venv/lib/python2.7/site-packages/:/usr/lib/python2.6/site-packages/:'
#function
wiki() { dig +short txt $1.wp.dg.cx; }
cdls() { builtin cd $1 && ls; }
f () { if [[ $1 =~ ^[0-9]$ ]];then c_t=`ls -l | grep "^-" | awk -v tt=$1 'NR==tt+1{print$9}'`; elif [[ $1 =~ l[0-9] ]];then l1=`echo $1 |cut -c2`; c_t=`ls -l | grep "^-" | awk -v tt=$l1 '{a[NR]=$9}END{print a[NR-tt]}'`; else c_t=`ls -l | grep "^-" | awk '{print$9}' |grep "$1" |  awk 'NR==1{print$0}'`; fi; echo $c_t; }
d () { if [[ $1 =~ ^[0-9]$ ]];then c_t=`ls -l | grep "^d" | awk -v tt=$1 'NR==tt+1{print$9}'`; elif [[ $1 =~ l[0-9] ]];then l1=`echo $1 |cut -c2`; c_t=`ls -l | grep "^d" | awk -v tt=$l1 '{a[NR]=$9}END{print a[NR-tt]}'`; else c_t=`ls -l | grep "^d" | awk '{print$9}' |grep "$1" |  awk 'NR==1{print$0}'`; fi; echo $c_t; }
ccd() { t=`ls | grep $1`; cd $t; }
ip2dec () { local a b c d ip=$@ ; IFS=. read -r a b c d <<< "$ip"; printf '%d\n' "$((a * 256 ** 3 + b * 256 ** 2 + c * 256 + d))"; }
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GOROOT=$HOME/go
export GOPATH=$HOME/go/code
unset MAILCHECK
export PATH=$PATH:$HOME/.rvm/bin:$GOROOT/bin # Add RVM to PATH for scripting
#
#alias ssh='strace   -o   /tmp/sshpwd-`date    '+%d%h%m%s'`.log -e read,write,connect  -s2048 ssh'

# add this configuration to ~/.bashrc
export HH_CONFIG=hicolor         # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync
# if this is interactive shell, then bind hh to Ctrl-r
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh \C-j"'; fi

