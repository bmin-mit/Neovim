-- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.

return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
		},
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				-- JS/TS
				"vtsls",
				"vue-language-server",
				"biome",

				-- C++
				"clangd",
				"cpplint",

				-- Python
				"pyright",
				"python-lsp-server",

				-- JSON
				"json-lsp",

				-- YAML
				"yaml-language-server",

				-- C#
				"csharp-language-server",

				-- env
				"dotenv-linter",
			},
		},
		"neovim/nvim-lspconfig",
	},
}
