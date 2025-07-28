-- 语法高亮和届写
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "User FilePost",
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  branch = 'main',
  lazy = false,
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "cpp",
        "diff",
        "html",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "latex",
        "python",
        "regex",
        "go",
        "rust",
        "toml",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
      },
      sync_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true },
    })
    require'nvim-treesitter'.install { 'rust', 'javascript', 'go' }
  end,
}
