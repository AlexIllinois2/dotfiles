-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 自动读取外部修改的文件
vim.opt.autoread = true

-- 只在【切回窗口】时刷新（性能最好，最适合常驻前台）
vim.api.nvim_create_autocmd({
  "FocusGained", -- 切回 nvim 窗口
  "BufEnter", -- 切换文件
  "WinEnter", -- 切换窗口
}, {
  group = vim.api.nvim_create_augroup("AutoReload", { clear = true }),
  callback = function()
    vim.cmd("checktime")
  end,
})
