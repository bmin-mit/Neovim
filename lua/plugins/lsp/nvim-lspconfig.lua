return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },

	keys = {
		-- basic LSP
		{ "gd", vim.lsp.buf.definition, desc = "Goto Definition" },
		{ "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
		{ "gr", vim.lsp.buf.references, desc = "References" },
		{ "gi", vim.lsp.buf.implementation, desc = "Goto Implementation" },
		{ "gy", vim.lsp.buf.type_definition, desc = "Goto Type Definition" },

		-- hover / docs
		{ "K", vim.lsp.buf.hover, desc = "Hover" },
		{ "<C-k>", vim.lsp.buf.signature_help, desc = "Signature Help" },

		-- actions
		{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" } },
		{ "<leader>rn", vim.lsp.buf.rename, desc = "Rename" },

		-- diagnostics
		{
			"[d",
			function()
				vim.diagnostic.jump({ count = -1, float = true })
			end,
			desc = "Prev Diagnostic",
		},
		{
			"]d",
			function()
				vim.diagnostic.jump({ count = 1, float = true })
			end,
			desc = "Next Diagnostic",
		},
		{ "<leader>cd", vim.diagnostic.open_float, desc = "Line Diagnostics" },
		{ "<leader>q", vim.diagnostic.setloclist, desc = "Quickfix List" },
	},
}
