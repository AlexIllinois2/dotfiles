
eval "$(zoxide init zsh --cmd cd)"

cd() {
    __zoxide_z "$@" && ls -a
}
