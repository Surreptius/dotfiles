path+=("$HOME/.config/composer/vendor/bin")
path+=("$HOME/.local/bin")
path+=("$HOME/.bun/bin")
path+=("$HOME/.cargo/bin")
path+=("$HOME/.local/bin")

export EDITOR=nvim
export VISUAL=nvim

export NOTES=$HOME/Notes

# Completions (?)
## Rust
. "$HOME/.cargo/env"
## Bun
[ -s "/home/paullang/.bun/_bun" ] && source "/home/paullang/.bun/_bun"
## Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/paullang/.local/share/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/paullang/.local/share/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/paullang/.local/share/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/paullang/.local/share/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


