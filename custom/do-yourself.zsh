# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
alias al='alias'
alias p='pass'
alias f='find'
alias e='explorer.exe'
alias c='cf'
alias j='z'
alias s='source'
alias a='ag'
alias af='alias | a'
alias o='e'
alias h='http'
alias le='less'
alias gs='git status'
alias gog='ssh lovejavaee@35.200.79.140'
#export go='lovejavaee@35.200.79.140'
alias clip='clip.exe'
alias xclip='clip.exe'

# ignore DLL...
zstyle ':completion:*:complete:-command-:*:*' ignored-patterns '*.dll|*.exe|*.so|*.pyd'

# Export
export EDITOR='/usr/bin/vim'

# For bindKey
bindkey ',' autosuggest-accept

# For jira 
eval "$(jira --completion-script-zsh)"

# Tell zsh not to nice background processes
unsetopt BG_NICE
