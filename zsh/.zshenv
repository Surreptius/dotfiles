path+=("$HOME/.config/composer/vendor/bin")
path+=("$HOME/.local/bin")
path+=("$HOME/.bun/bin")
path+=("$HOME/.cargo/bin")


# Completions (?)
## Rust
. "$HOME/.cargo/env"
# Bun
[ -s "/home/paullang/.bun/_bun" ] && source "/home/paullang/.bun/_bun"

