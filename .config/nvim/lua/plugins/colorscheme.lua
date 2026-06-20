return {
  -- 启用 TokyoNight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    -- 默认用 day 亮色
    opts = { style = "night" },
  },

  -- 让 LazyVim 默认加载亮色
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}

