return {
  "mason-org/mason.nvim",
  opts = {
    -- 核心：关闭自动刷新注册表，不会启动就联网请求 registry
    registry_cache = {
      refresh = false,
    },

    -- 可选优化1：移除 wget，只使用 curl，彻底杜绝调用wget
    fetchers = { "curl" },

    -- 可选优化2：不修改系统PATH，减少额外触发逻辑
    PATH = "skip",

    -- 限制并发安装进程，防止批量拉起下载进程
    max_concurrent_installers = 1,
    registries = {},
    system_registries = {},
  },
  dependencies = {
    -- 关闭 mason-lspconfig 自动安装LSP（最容易触发联网的元凶）
    {
      "mason-org/mason-lspconfig.nvim",
      opts = {
        automatic_installation = false,
      },
    },
  },
}
