-- 基本设置
vim.opt.number = true                   -- 显示行号
vim.opt.relativenumber = true           -- 显示相对行号
vim.opt.tabstop = 4                     -- Tab键对应的空格数量
vim.opt.shiftwidth = 4                  -- 自动缩进的空格数量
vim.opt.expandtab = true                -- 将Tab转换为空格
vim.opt.smartindent = true              -- 启用智能缩进
vim.opt.cursorline = false               -- 高亮光标所在行
vim.opt.termguicolors = false            -- 启用 24-bit RGB 颜色
vim.opt.wrap = true                     -- 自动换行
vim.opt.clipboard = 'unnamedplus'       -- 启用系统剪切板



-- 设置 leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.cmd('colorscheme vim')
vim.cmd('colorscheme habamax')


-- 搜索相关设置
vim.opt.ignorecase = true               -- 搜索时忽略大小写
vim.opt.smartcase = true                -- 智能区分大小写
vim.opt.hlsearch = true                 -- 高亮搜索结果
vim.opt.incsearch = true                -- 边输入边搜索

-- 禁用备份和交换文件
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false




-- -- lazyvim plugin manager
-- -- Bootstrap lazy.nvim
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not (vim.uv or vim.loop).fs_stat(lazypath) then
--   local lazyrepo = "https://github.com/folke/lazy.nvim.git"
--   local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
--   if vim.v.shell_error ~= 0 then
--     vim.api.nvim_echo({
--       { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
--       { out, "WarningMsg" },
--       { "\nPress any key to exit..." },
--     }, true, {})
--     vim.fn.getchar()
--     os.exit(1)
--   end
-- end
-- vim.opt.rtp:prepend(lazypath)
--
-- -- Make sure to setup `mapleader` and `maplocalleader` before
-- -- loading lazy.nvim so that mappings are correct.
-- -- This is also a good place to setup other settings (vim.opt)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"
--
-- -- Setup lazy.nvim
-- require("lazy").setup({
--   spec = {
--     -- add your plugins here
--
--
--     -- offical lsp plugin
--     'neovim/nvim-lspconfig',
--
--     --- easymotion
--     'easymotion/vim-easymotion',
--
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     -- telescope
--     'nvim-telescope/telescope.nvim',
--     dependencies = { 'nvim-lua/plenary.nvim' }
-- },
--   -- Configure any other settings here. See the documentation for more details.
--   -- colorscheme that will be used when installing plugins.
--   install = { colorscheme = { "habamax" } },
--   -- automatically check for plugin updates
--   checker = { enabled = true },
-- })
--
-- -- telescope 配置
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
--
-- -- lsp配置
-- vim.lsp.enable('clangd')
-- vim.lsp.enable('pyright')
--
--
-- -- nvim-treesitter 配置
-- require'nvim-treesitter.configs'.setup {
--   -- A list of parser names, or "all" (the listed parsers MUST always be installed)
--   ensure_installed = { "c","cpp","rust","lua","python","vim", "vimdoc", "query", "markdown", "markdown_inline" },
--
--   -- Install parsers synchronously (only applied to `ensure_installed`)
--   sync_install = false,
--
--   -- Automatically install missing parsers when entering buffer
--   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--   auto_install = true,
--
--   -- List of parsers to ignore installing (or "all")
--   ignore_install = { "javascrip","csv" },
--
--   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
--   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
--
--   highlight = {
--     enable = true,
--
--     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--     -- the name of the parser)
--     -- list of language that will be disabled
--     -- disable = { "c", "rust" },
--     -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
--     disable = function(lang, buf)
--         local max_filesize = 100 * 1024 -- 100 KB
--         local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--         if ok and stats and stats.size > max_filesize then
--             return true
--         end
--     end,
--
--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },
-- }
--
