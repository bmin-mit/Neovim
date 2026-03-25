return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		views = {
			cmdline_popup = {
				backend = "popup",
				relative = "editor",
				position = {
					row = "20%", -- Center vertically
					col = "50%", -- Center horizontally
				},
				size = {
					min_width = 60,
					width = "auto",
					height = "auto",
				},
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
