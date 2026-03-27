-- Lightweight yet powerful formatter plugin for Neovim

return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			cpp = { "clang_format" },
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "biome-check", "eslint", "prettierd", "prettier", stop_after_first = true },
			typescript = { "biome-check", "eslint", "prettierd", "prettier", stop_after_first = true },
			["javascriptreact"] = { "biome-check", "eslint", "prettierd", "prettier", stop_after_first = true },
			["typescriptreact"] = { "biome-check", "eslint", "prettierd", "prettier", stop_after_first = true },
			yaml = { "yamlfix" },
			["json"] = { "biome-check" },
			["css"] = { "biome-check" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters = {
			biome = {
				require_cwd = true,
			},
		},
	},
}
