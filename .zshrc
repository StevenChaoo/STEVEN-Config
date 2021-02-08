ZSH_DISABLE_COMPFIX="true"

# ----------PROXY

alias proxy='export all_proxy=socks5://127.0.0.1:9091'
alias unproxy='unset all_proxy'

# ----------RANGER

alias ra=ranger

# ----------NEOFETCH

alias n=neofetch

# ----------CLEAN SCREEN

alias L=clear

# ----------OH-MY-ZSH

export ZSH="/Users/steven/.oh-my-zsh"
export LC_CTYPE="en_US.UTF-8"

# ----------ZSH-THEME

ZSH_THEME="ys"

# ----------ZSH-PLUGIN

plugins=(
git
zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# ----------ANACONDA

__conda_setup="$('/Users/steven/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/steven/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/steven/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/steven/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# ----------HOMEBREW

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# ----------AUTOJUMP

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# ----------FZF

export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlisht -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlisht -O ansi -l {} || cat {}) 2> /dev/null | head -500'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
