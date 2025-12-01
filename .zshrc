if [ "$TMUX" = "" ]; then tmux; fi
export PATH="$PATH:$HOME/tools/flutter/bin"
autoload -Uz compinit && compinit
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

export OPENSSL_ROOT_DIR=/usr/local/opt/openssl@3
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/dsoltis/Library/Python/3.11/bin:$PATH"
export PATH="/Users/dsoltis/Library/Python3.11/lib:$PATH"
export ANDROID_SDK_ROOT="/Users/dsoltis/Library/Android/sdk"
export PATH=$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH
# Bind up and down arrow keys to search history with the current prefix
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
export PATH=$PATH:$HOME/go/bin
