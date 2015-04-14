# Path to your oh-my-zsh installation.
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
wiki() { dig +short txt $1.wp.dg.cx; }
cdls() { builtin cd $1 && ls; }
f () { if [[ $1 =~ ^[0-9]$ ]];then c_t=`ls -l | grep "^-" | awk -v tt=$1 'NR==tt+1{print$9}'`; elif [[ $1 =~ l[0-9] ]];then l1=`echo $1 |cut -c2`; c_t=`ls -l | grep "^-" | awk -v tt=$l1 '{a[NR]=$9}END{print a[NR-tt]}'`; else c_t=`ls -l | grep "^-" | awk '{print$9}' |grep "$1" |  awk 'NR==1{print$0}'`; fi; echo $c_t; }
d () { if [[ $1 =~ ^[0-9]$ ]];then c_t=`ls -l | grep "^d" | awk -v tt=$1 'NR==tt+1{print$9}'`; elif [[ $1 =~ l[0-9] ]];then l1=`echo $1 |cut -c2`; c_t=`ls -l | grep "^d" | awk -v tt=$l1 '{a[NR]=$9}END{print a[NR-tt]}'`; else c_t=`ls -l | grep "^d" | awk '{print$9}' |grep "$1" |  awk 'NR==1{print$0}'`; fi; echo $c_t; }
ccd() { t=`ls | grep $1`; cd $t; }
ip2dec () { local a b c d ip=$@ ; IFS=. read -r a b c d <<< "$ip"; printf '%d\n' "$((a * 256 ** 3 + b * 256 ** 2 + c * 256 + d))"; }
pass2() {echo $1-$2 | sha1sum | base64 | head -c 20 | sed -n 's/[13579a-h]/7/p' | sed -n 's/[13579a-h]/\@/p'}
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias dvo='xmodmap ~/.fvwm/scripts/dvorak.pke'
alias aaa='xmodmap ~/.fvwm/scripts/origin.pke'
alias yunpa='ssh -D 19050 ops@freemind.gohjkl.com'
alias yun1='ssh ops@172.16.211.44'
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey -v   #vi mode 
bindkey "^R" history-incremental-search-backward
bindkey "\e." yank-last-arg
export PYTHONSTARTUP=~/.pythonrc.py