# options
setopt APPEND_HISTORY
setopt AUTO_CD
setopt AUTO_LIST
setopt AUTO_MENU
setopt CORRECT
setopt HIST_ALLOW_CLOBBER
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_GLOB
setopt NO_BEEP

setopt autopushd
setopt hist_ignore_all_dups

unsetopt CASE_GLOB

# completion system
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes

# set vi line editing
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey "^[[A"  up-line-or-search
bindkey "^[[B"  down-line-or-search

# set xterm title text
precmd () { print -Pn "\e]0;%n@%m: %~\a" }

#environment
export HISTFILE="$HOME/.history"
export HISTSIZE=200

if [[ `uname` == "Darwin" ]] then
    export COMPUTERNAME="`scutil --get ComputerName`"
else
    export COMPUTERNAME="`hostname -s`"
fi

if [[ $USER != "root" ]]; then
    export SAVEHIST=$HISTSIZE
fi

export CLICOLOR=YES
export LSCOLORS="Hxfxcxdxbxegedabagacad"

# aliases
if [[ `uname` == "Linux" ]] then
    alias ls='ls -l --color'
else
    alias ls='ls -l'
fi

alias h='history'
alias p='pushd' 
alias o='popd'

# prompts
PROMPT="%B%n%b@%B%l%b.%B${(L)COMPUTERNAME}%b/%B%h%b%# "
RPROMPT=' %B%~%b'

# path
export PATH=.:~/Scripts:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/opt/local/lib/postgresql82/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# load local settings
if [[ -e "$HOME/.zshrc.local" ]] then
    source $HOME/.zshrc.local
fi
