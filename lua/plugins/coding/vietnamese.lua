return {
	"sontungexpt/vietnamese.nvim",
	dependencies = {
		"sontungexpt/bim.nvim",
	},
	event = "VeryLazy",
	opts = {
		enabled = false,
	},
	keys = {
		{
			"<leader>l",
			"<cmd>VietnameseToggle<cr>",
			desc = "Toggle Vietnamese keyboard",
		},
	},
}
