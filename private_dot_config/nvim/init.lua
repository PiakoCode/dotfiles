-- 基本设置
vim.opt.number = true -- 显示行号
vim.opt.relativenumber = true -- 显示相对行号
vim.opt.tabstop = 4 -- Tab键对应的空格数量
vim.opt.shiftwidth = 4 -- 自动缩进的空格数量
vim.opt.expandtab = true -- 将Tab转换为空格
vim.opt.smartindent = true -- 启用智能缩进
vim.opt.cursorline = true -- 高亮光标所在行
vim.opt.termguicolors = true -- 启用真彩色
vim.opt.wrap = true -- 自动换行
vim.opt.clipboard = "unnamedplus" -- 启用系统剪切板
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- 所有窗口设置为圆角
vim.opt.winborder = "rounded"

-- 设置显示标志（如错误、警告、Git 状态、断点等）,选项 'auto','no,'yes','number'
vim.opt.signcolumn = "auto"
-- 设置 leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.cmd('colorscheme vim')
-- vim.cmd('colorscheme default')
-- vim.cmd('colorscheme lunaperche')

-- 搜索相关设置
vim.opt.ignorecase = true -- 搜索时忽略大小写
vim.opt.smartcase = true -- 智能区分大小写
vim.opt.hlsearch = true -- 高亮搜索结果
vim.opt.incsearch = true -- 边输入边搜索

-- 禁用备份和交换文件
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- 设置tab， 缩进
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4


-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 强制显示标签页
vim.opt.showtabline = 2


-- 如果文件类型为lua, tab大小设置为2
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

-- 开启插入模式下的实时诊断， 但是可能会降低性能
-- https://neovim.io/doc/user/diagnostic.html
vim.diagnostic.config({
	update_in_insert = true, -- 插入模式下的实时诊断
	virtual_text = true, -- 虚拟文本
	signs = false, -- 在左侧显示signs
	underline = true, -- 显示波浪线
})

-- 先加载插件
require("config.lazy")
require("config.keymap")
-- require("plugins.color")
-- 可以参考的配置方案
-- https://martinlwx.github.io/zh-cn/config-neovim-from-scratch
-- https://zhuanlan.zhihu.com/p/17683065207


--- https://github.com/folke/which-key.nvim
-- which key config to set desc infomation
-- need to load which-key.nvim plugin first
--local wk = require("which key")

-- wk.add({
-- 	{
-- 		mode = { "n", "v" },
-- 		-- 保存并退出全部缓冲区(buffer)
-- 		{ "<leader>x", "<cmd>xa<cr>", desc = "save and quit all" },
-- 		-- 若有未保存内容则先保存，然后退出当前缓冲区
-- 		{ "<leader>q", "<cmd>x<cr>", desc = "save and quit" },
-- 	},
-- })
