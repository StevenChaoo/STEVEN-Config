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
