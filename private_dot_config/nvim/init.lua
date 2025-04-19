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


-- 设置自动补全
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}


vim.cmd('colorscheme vim')
-- vim.cmd('colorscheme sorbet')              -- 使用neovim自带的'sorbet'主题

-- 搜索相关设置
vim.opt.ignorecase = true               -- 搜索时忽略大小写
vim.opt.smartcase = true                -- 智能区分大小写
vim.opt.hlsearch = true                 -- 高亮搜索结果
vim.opt.incsearch = true                -- 边输入边搜索

-- 禁用备份和交换文件
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

