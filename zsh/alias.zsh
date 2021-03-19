# LAZYGIT
alias lg="lazygit"

# NVIM
alias vi="nvim"
alias vim="nvim"

# TMUX
alias ta="tmux a"
alias tk="tmux kill-session -t"
alias tn="tmux new -s"

# GIT
# start a working area
alias gclone="git clone"
alias ginit="git init"
# work on the current change
alias gall="git add ."
alias gadd="git add"
# examine the history and state
alias glog="git log"
alias greset="git reset --hard"
alias gstatus="git status" 
# grow, mark and tweak your common history
alias gcommit="git commit -m"
alias gamend="git commit --amend --no-edit"
alias gbranch="git branch"
alias gswitch="git switch"
alias gmerge="git merge"
# collaborate
alias gremote="git remote add origin"
alias gfirst="git push -u origin master"
alias gpush="git push"
alias gfpush="git push -f"

# PROXY
alias proxy='export all_proxy=socks5://127.0.0.1:9091'
alias unproxy='unset all_proxy'

# RANGER
alias ra=ranger

# NEOFETCH
alias n=neofetch

# CLEAN SCREEN
alias L=clear

# ANACONDA
alias cc="conda create -n"
alias cac="conda activate"
alias cdeac="conda deactivate"

# CPP
alias cg="g++ -Wall -o"
alias cen="g++ -Wall -o test test.cpp"
alias cde="./test"

# FZF
alias his="history | fzf"

# WHEN CHANGED
# python
alias testpy="when-changed -v -r -1 test.py 'python test.py'"
# cpp
alias testcpp="when-changed -v -r -1 test.cpp 'g++ -o test test.cpp'"

# MARKDOWN
alias toc="gh-md-toc"
