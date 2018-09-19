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
alias find='find . -not -path "*/.git*"  -not -path "*/target*" -not -path "*/.idea/*" -not -path "*/.mvn/*"'
alias f='find'
alias e='explorer.exe'
alias c='cf'
alias j='z'
alias a='ag'
alias af='alias | a'
alias o='e'
alias h='http'
alias l='ls -laFh --color=auto'
alias le='less'
alias lo='localhost'
alias s='google'
alias s.='source'
alias gs='git status'
alias gcd='git checkout dev'
alias gog='ssh gcp'
alias gi='gist 2>/dev/null'
alias gist='gi'
alias gist-paste='gist-paste 2>/dev/null'
alias gip='gist-paste'
#alias clip='clip.exe'
#alias xclip='clip.exe'

# ignore DLL...
zstyle ':completion:*:complete:-command-:*:*' ignored-patterns '*.dll|*.exe|*.so|*.pyd|*.NLS|*xml|*.old|*.mof|*.ini|*.h|*.DLL|*.msc|*.rc|*.reg'

# Export
export EDITOR='/usr/bin/vim'

# For bindKey
bindkey ','  autosuggest-accept
bindkey '^j' autosuggest-execute
bindkey '^[d' autosuggest-clear

# For jira 
eval "$(jira --completion-script-zsh)"

# Tell zsh not to nice background processes
unsetopt BG_NICE


# For proxy witch
function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:1081"
    export https_proxy=$http_proxy
    export socket_proxy="socks5://127.0.0.1:1081"
    echo -e "Proxy Open!"
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    unset socket_proxy
    echo -e "Proxy Closed!"
}

function proxy_show(){
    echo $http_proxy
    echo $https_proxy
    echo $socket_proxy
}
