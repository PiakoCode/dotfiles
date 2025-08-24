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
			terminal = {
				bo = {
					filetype = "snacks_terminal",
				},
				wo = {},
				keys = {
					q = "hide",
					gf = function(self)
						local f = vim.fn.findfile(vim.fn.expand("<cfile>"), "**")
						if f == "" then
							Snacks.notify.warn("No file under cursor")
						else
							self:hide()
							vim.schedule(function()
								vim.cmd("e " .. f)
							end)
						end
					end,
					term_normal = {
						"<esc>",
						function(self)
							self.esc_timer = self.esc_timer or (vim.uv or vim.loop).new_timer()
							if self.esc_timer:is_active() then
								self.esc_timer:stop()
								vim.cmd("stopinsert")
							else
								self.esc_timer:start(200, 0, function() end)
								return "<esc>"
							end
						end,
						mode = "t",
						expr = true,
						desc = "Double escape to normal mode,两次esc回到normal模式",
					},
				},
			},
			scope = { enabled = true },
			scroll = { enabled = true },
			words = { enabled = true },
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
				"<leader>fc",
				function()
					Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "Find Config File",
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
					Snacks.terminal.toggle()
				end,
				desc = "Toggle Terminal",
			},
			-- {
			-- 	"<c-Enter>",
			-- 	function()
			-- 		Snacks.terminal.open()
			-- 	end,
			-- 	desc = "Toggle Terminal",
			-- },
			--
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
