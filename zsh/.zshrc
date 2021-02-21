# ------------------------------------------------------------HAEDER

# Author: StevenChaoo <https://github.com/StevenChaoo>
# Required: [
#       \ neovim,
#       \ node,
#       \ autojump,
#       \ bat,
#       \ ctags,
#       \ fzf,
#       \ font-hack-nerd-font,
#       \ ranger,
#       \ neofetch,
#       \ tmux]

# ------------------------------------------------------------CONFIG

ZSH_DISABLE_COMPFIX="true"

# ------------------------------------------------------------NVIM

alias vi="nvim"

# ------------------------------------------------------------TMUX

alias ta="tmux a"
alias tk="tmux kill-session -t"
alias tn="tmux new -s"

# ------------------------------------------------------------GIT

# start a working area
alias gclone="git clone"
alias ginit="git init"

# work on the current change
alias gall="git add ."
alias gadd="git add"

# examine the history and state
alias gdiff="git diff"
alias gstatus="git status" 

# grow, mark and tweak your common history
alias gcommit="git commit -m"
alias gbranch="git branch"
alias gcheck="git checkout"
alias gmerge="git merge"

# collaborate
alias gremote="git remote add origin"
alias gpush="git push"

# ------------------------------------------------------------PROXY

alias proxy='export all_proxy=socks5://127.0.0.1:9091'
alias unproxy='unset all_proxy'

# ------------------------------------------------------------RANGER

alias ra=ranger

# ------------------------------------------------------------NEOFETCH

alias n=neofetch

# ------------------------------------------------------------CLEAN SCREEN

alias L=clear

# ------------------------------------------------------------OH-MY-ZSH

export ZSH="/Users/steven/.oh-my-zsh"
export LC_CTYPE="en_US.UTF-8"

# ------------------------------------------------------------ZSH-THEME

ZSH_THEME="agnoster"

# ------------------------------------------------------------ZSH-PLUGIN

plugins=(
git
zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------ANACONDA

alias cc="conda create -n"
alias cac="conda activate"
alias cde="conda deactivate"
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

# ------------------------------------------------------------HOMEBREW

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# ------------------------------------------------------------AUTOJUMP

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# ------------------------------------------------------------FZF

export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlisht -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlisht -O ansi -l {} || cat {}) 2> /dev/null | head -500'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
