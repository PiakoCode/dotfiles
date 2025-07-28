return {
	-- 按键提示
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("which-key").setup()

		end,
	},

	-- 图标
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	-- buffer 栏
	-- {
	-- 	'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
	--
	--    config = function()
	-- 		require("bufferline").setup({
	-- 			-- options = {
	-- 			-- 	-- 使用 nvim 内置lsp
	-- 			-- 	diagnostics = "nvim_lsp",
	-- 			-- 	-- 左侧让出 nvim-tree 的位置
	-- 			-- 	offsets = {
	-- 			-- 		{
	-- 			-- 			text = "File Explorer",
	-- 			-- 			highlight = "Directory",
	-- 			-- 			text_align = "left",
	-- 			-- 		},
	-- 			-- 	},
	-- 			-- },
	-- 		})
	-- 	end,
	-- },
	--
	-- Tab 状态栏
	{
		"nanozuki/tabby.nvim",
		---@type TabbyConfig
		opts = {
			-- configs...
		},
		config = function()
			require("tabby").setup({
				preset = "active_wins_at_tail",
				option = {
					theme = {
						fill = "TabLineFill", -- tabline background
						head = "TabLine", -- head element highlight
						current_tab = "TabLineSel", -- current tab label highlight
						tab = "TabLine", -- other tab label highlight
						win = "TabLine", -- window highlight
						tail = "TabLine", -- tail element highlight
					},
					nerdfont = true, -- whether use nerdfont
					lualine_theme = nil, -- lualine theme name
					tab_name = {
						name_fallback = function(tabid)
							return tabid
						end,
					},
					buf_name = {
						mode = "unique", -- or 'relative', 'tail', 'shorten'
					},
				},
			})
		end,
	},

	-- 状态栏
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<Leader>b", "<Cmd>BufferLineCycleNext<CR>", desc = "Cycle to next buffer" },
		},
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
			})
		end,
	},

	{
		"nvim-neorg/neorg",
		-- lazy-load on filetype
		ft = "norg",
		-- options for neorg. This will automatically call `require("neorg").setup(opts)`
		opts = {
			load = {
				["core.defaults"] = {},
			},
		},
	},
	-- 按下 alt + r 重命名
	{
		"saecki/live-rename.nvim",
		opts = {},
		keys = {
			{
				"<M-r>",
				function()
					require("live-rename").rename({ insert = true })
				end,
			},
		},
	},
	-- 括号处理
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	-- 终端
	{
		-- amongst your other plugins
		{ "akinsho/toggleterm.nvim", version = "*", config = true },
		-- or
		-- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
	},

	-- lazygit
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
}
