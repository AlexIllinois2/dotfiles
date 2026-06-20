return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = function(_, opts)
    -- 完全禁用代码块增强（不 conceal、不注入 $ language、不隐藏结束 ```）
    opts.code = {
      enabled = false,
    }
    return opts
  end,
}
