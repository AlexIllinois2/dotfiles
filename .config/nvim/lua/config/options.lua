-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt

opt.guicursor = "n:block-Cursor,i:block-Cursor,v:block-Cursor"
vim.cmd("highlight Cursor guibg=#d03030 guifg=#ffffff")


-- 关闭拼写检查，去除中文下的波浪线
opt.spelllang = {}

-- 使用系统剪贴板
opt.clipboard = "unnamedplus"

-- 可视模式: <C-c> 复制选中到系统剪贴板
vim.keymap.set("x", "<C-c>", '"+y', { desc = "Copy selection to clipboard" })

-- 普通模式: <C-c> 复制当前行
vim.keymap.set("n", "<C-c>", '"+yy', { desc = "Copy line to clipboard" })
