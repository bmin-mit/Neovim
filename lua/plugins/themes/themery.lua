-- A colorscheme picker with live preview and persistence for neovim

return {
	"zaldih/themery.nvim",
	lazy = false,
	keys = {
		{ "<leader>t", "<cmd>Themery<cr>", desc = "Change [T]heme" },
	},
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "Catppucin",
					colorscheme = "catppuccin-nvim",
				},
				{
					name = "Catppucin Latte",
					colorscheme = "catppuccin-latte",
				},
				{
					name = "Catppucin Frappe",
					colorscheme = "catppuccin-frappe",
				},
				{
					name = "Catppucin Macchiato",
					colorscheme = "catppuccin-macchiato",
				},
				{
					name = "Catppucin Mocha",
					colorscheme = "catppuccin-mocha",
				},
				{
					name = "Tokyo Night",
					colorscheme = "tokyonight",
				},
				{
					name = "Tokyo Night - Day",
					colorscheme = "tokyonight-day",
				},
				{
					name = "Tokyo Night - Night",
					colorscheme = "tokyonight-night",
				},
				{
					name = "Tokyo Night - Storm",
					colorscheme = "tokyonight-storm",
				},
				{
					name = "Tokyo Night - Moon",
					colorscheme = "tokyonight-moon",
				},
				{
					name = "OneDark - Dark",
					colorscheme = "onedark",
					before = [[
            require("onedark").setup({ style = "dark" })
          ]],
				},
				{
					name = "OneDark - Warmer",
					colorscheme = "onedark",
					before = [[
            require("onedark").setup({ style = "warmer" })
          ]],
				},
				{
					name = "OneDark - Cool",
					colorscheme = "onedark",
					before = [[
            require("onedark").setup({ style = "cool" })
          ]],
				},
				{
					name = "OneDark - Deep",
					colorscheme = "onedark",
					before = [[
            require("onedark").setup({ style = "deep" })
          ]],
				},
			},
		})
	end,
}
