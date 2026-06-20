-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- normal模式：<space>yc 复制``内部内容
vim.keymap.set("n", "<leader>yc", "yi`", { desc = "Copy markdown inline code(`` content)" })
vim.keymap.set("n", "<leader>yC", "yi```", { desc = "Copy markdown ``` code block" })
