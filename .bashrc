# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# 基础插件
source -- ~/.local/share/blesh/ble.sh
source ~/.local/share/bash/fzf-tab-completion/bash/fzf-bash-completion.sh
# 将 Tab 键绑定到 fzf 补全功能
bind -x '"\t": fzf_bash_completion'
# 添加钩子供自定义脚本使用
source ~/.local/share/bash/bash-preexec/bash-preexec.sh

# 将上箭头绑定到向后搜索历史记录
bind '"\e[A": history-search-backward'
# 将下箭头绑定到向前搜索历史记录
bind '"\e[B": history-search-forward'
# 配置补全样式：不区分大小写
bind 'set completion-ignore-case on'
# 清屏 + 清滚动缓冲区，并重绘提示符
clear-screen-and-scrollback() {
    # 1. 清可见屏 + 清滚动区
    printf '\e[H\e[2J\e[3J'
    # 2. 重绘提示符与当前命令行（等价 zle .reset-prompt）
    #    清屏后光标在左上角，Readline 不会自动重画，需要手动触发
    READLINE_LINE="$READLINE_LINE"
    READLINE_POINT=$READLINE_POINT
}
# 绑定到 Ctrl+L
bind -x '"\C-l": clear-screen-and-scrollback'

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

for line in $(find "$HOME/.local/shell/env" -mindepth 1); do
    source "$line"
done
for line in $(find "$HOME/.local/shell/rc" -mindepth 1); do
    source "$line"
done
unset line

