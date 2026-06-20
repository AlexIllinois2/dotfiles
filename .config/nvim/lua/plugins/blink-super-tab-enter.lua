-- plugins/blink-super-tab-enter.lua
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "super-tab",

      -- ❌ 禁用 Enter 确认补全（只换行）
      ["<CR>"] = { "fallback" },
    },

    snippets = {
      -- preset = "luasnip", -- 如果你没用 LuaSnip，可删掉这行
    },
  },
}
