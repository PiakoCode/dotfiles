return {
	{

		"mason-org/mason-lspconfig.nvim",
		-- lazy=true,
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = { "pyright", "gopls", "clangd", "rust_analyzer", "cmake", },
		},
	},
}
