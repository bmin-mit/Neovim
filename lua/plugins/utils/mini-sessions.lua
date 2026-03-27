return {
	"echasnovski/mini.sessions",
	event = "VeryLazy",
	opts = {
		autowrite = true,
		directory = vim.fn.stdpath("data") .. "/sessions",
	},
	keys = {
		{
			"<leader>ms",
			function()
				MiniSessions.write()
			end,
			desc = "Save global session",
		},
		{
			"<leader>sl",
			function()
				MiniSessions.read()
			end,
			desc = "Load session",
		},
	},
}
