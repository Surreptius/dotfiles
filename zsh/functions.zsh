# Start Tmux with fzf
sesh_start() {
  sesh connect "$(sesh list | fzf)"
}

