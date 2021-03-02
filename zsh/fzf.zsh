export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlisht -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlisht -O ansi -l {} || cat {}) 2> /dev/null | head -500'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
