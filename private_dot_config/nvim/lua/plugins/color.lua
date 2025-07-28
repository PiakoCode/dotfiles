return {
  "folke/tokyonight.nvim",
  lazy = false, -- 确保启动时就加载
  priority = 1000, -- 确保在其他插件之前加载
  config = function()
    -- 加载颜色主题
    vim.cmd.colorscheme("tokyonight")
  end,
}