bindkey -v

export PATH="$HOME/Scripts:$HOME/.local/bin:$HOME/:$PATH"
export GOPATH=$HOME/go

HISTFILE=~/.config/zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt appendhistory

export KEYTIMEOUT=1
export EDITOR="vim"
export TERM="xterm-256color"

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

source ~/Git/configs/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/Git/configs/zsh-plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/Git/configs/zsh-plugins/vi-mode.plugin.zsh
source ~/Git/configs/zsh-plugins/fzf.plugin.zsh

setopt prompt_subst
PROMPT='%f%F{black}%1 user:%f%F{blue}%1 ${USER}%f%F{magenta}%1 %f %F{black}%1 dir:%f%F{blue}%1 ${PWD/#$HOME/~}%f %F{white}%1 ${vcs_info_msg_0_}%f%F{cyan}%1 => '
MODE_INDICATOR="Normal"

zstyle ':vcs_info:git*' formats "%F{black}%1 branch:%f%F{blue}%1 %b %a"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

autoload -Uz compinit && compinit
autoload -U colors && colors
zmodload zsh/complist

# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#   autoload -Uz compinit
#   compinit
# fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/homebrew/opt/mongodb-community@3.4/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

