-- Lightweight yet powerful formatter plugin for Neovim

return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			cpp = { "clang_format" },
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "biome", "eslint", "prettierd", "prettier", stop_after_first = true },
			typescript = { "biome", "eslint", "prettierd", "prettier", stop_after_first = true },
			yaml = { "yamlfix" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
