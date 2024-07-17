path+=("$HOME/.local/share/bob/nvim-bin")
path+=("$HOME/.config/composer/vendor/bin")

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/plang/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/plang/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/plang/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/plang/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

