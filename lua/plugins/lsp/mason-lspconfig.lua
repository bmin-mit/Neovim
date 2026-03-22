-- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.

return {
	"mason-org/mason-lspconfig.nvim",
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

				-- Lua
				"lua_ls",

				-- JSON
				"json-lsp",

				-- YAML
				"yaml-language-server",

				-- C#
				"csharp-language-server",

				-- Rust
				"rust-analyzer",

				-- env
				"dotenv-linter",
			},
		},
		"neovim/nvim-lspconfig",
	},
}
