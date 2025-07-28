-- https://github.com/folke/snacks.nvim
-- 文件浏览器以及美化

return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = {
				enabled = true,

				-- https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md

				sections = {
					{ section = "header" },
					{ icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
					{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
					{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
					{ section = "startup" },
				},
			},
			-- 资源管理器
			explorer = {
				enabled = false,
			},
			indent = { enabled = true },
			input = { enabled = true },
			notifier = {
				enabled = true,
				timeout = 3000,
			},
			-- picker = {
			-- },
			picker = {
				prompt = "  ",
				enabled = true,
			},
			quickfile = { enabled = true },
			statuscolumn = { enabled = true },

			scope = { enabled = true },
			scroll = { enabled = true },
			words = { enabled = true },
			image = {
				enabled = false,
				math = {
					enabled = false, -- enable math expression rendering
				},
			},
		},
		keys = {
			-- Smart Find Files
			{
				"<leader><space>",
				function()
					Snacks.picker.smart()
				end,
				desc = "Smart Find Files",
			},
			-- find
			{
				"<leader>fb",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Buffers",
			},
			{
				"<leader>ff",
				function()
					Snacks.picker.files()
				end,
				desc = "Find Files",
			},
			{
				"<leader>fr",
				function()
					Snacks.picker.recent()
				end,
				desc = "Recent",
			},
			-- -- 在打开的项目中寻找
			-- {
			-- 	"<leader>fbg",
			-- 	function()
			-- 		Snacks.picker.grep_buffers()
			-- 	end,
			-- 	desc = "在打开的项目中寻找",
			-- },
			-- explorer
			-- {
			-- 	"<leader>e",
			-- 	function()
			-- 		Snacks.explorer()
			-- 	end,
			-- 	desc = "File Explorer",
			-- },

			{
				"<c-/>",
				function()
					Snacks.terminal()
				end,
				desc = "Toggle Terminal",
			},

			-- 查找
			{
				"<leader>sh",
				function()
					Snacks.picker.help()
				end,
				desc = "Help Pages",
			},
			{
				"<leader>sd",
				function()
					Snacks.picker.diagnostics()
				end,
				desc = "Diagnostics",
			},
			{
				'<leader>s"',
				function()
					Snacks.picker.registers()
				end,
				desc = "Registers",
			},
			{
				"<leader>fp",
				function()
					Snacks.picker.projects()
				end,
				desc = "Projects",
			},
			{
				"<leader>z",
				function()
					Snacks.zen()
				end,
				desc = "Toggle Zen Mode",
			},
		},
	},
}
