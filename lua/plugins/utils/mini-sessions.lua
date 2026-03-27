local function session_name()
	return vim.fn.substitute(vim.loop.cwd(), "/", "__", "g")
end

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
				MiniSessions.write(session_name())
			end,
			desc = "Save global session",
		},
		{
			"<leader>sl",
			function()
				MiniSessions.read(session_name())
			end,
			desc = "Load session",
		},
	},
}
