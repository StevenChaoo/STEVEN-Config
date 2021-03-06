# ------------------------------------------------------------HAEDER

# Author: StevenChaoo <https://github.com/StevenChaoo>
# Required: [
#       \ neovim,
#       \ autojump,
#       \ bat,
#       \ ctags,
#       \ fzf,
#       \ ranger,
#       \ neofetch,
#       \ lazygit,
#       \ anaconda,
#       \ golang,
#       \ tmux]

# ------------------------------------------------------------CONFIG

source ~/.config/zsh/alias.zsh
source ~/.config/zsh/anaconda.zsh
source ~/.config/zsh/homebrew.zsh
source ~/.config/zsh/fzf.zsh
source ~/.config/zsh/golang.zsh
source ~/.config/zsh/autojump.zsh
source ~/.config/zsh/systemsettings.zsh
source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------PLUGS

plugins=(
git
zsh-autosuggestions
)

