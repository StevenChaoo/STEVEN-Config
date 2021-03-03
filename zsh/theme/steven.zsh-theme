PROMPT="%(?:%{$fg_bold[red]%} StevenChaoo:%{$fg_bold[red]%} StevenChaoo)"
PROMPT+=' %{$fg[cyan]%} %c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}\uf09b %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} \uf42e"
