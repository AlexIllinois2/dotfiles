
if command -v mise >/dev/null 2>&1; then
    #eval "$(mise activate zsh)"
    eval "$(mise activate "${SHELL##*/}")"
    #eval "$($HOME/.local/bin/mise activate ${SHELL##*/})" # 重装完会报错
fi
