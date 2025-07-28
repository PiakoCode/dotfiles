
return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "saghen/blink.cmp" },
	config = function()
		-- nvim 0.11+ 引入的 vim.lsp.enable 机制
		vim.lsp.enable({ "rust_analyzer", "clangd", "pyright", "gopls", "lua-language-server" })

	end,
}
