return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-latte")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		name = "gruvbox",
		priority = 1000,
		-- config = function()
		-- 	vim.o.background = "light"
		-- 	vim.cmd.colorscheme("gruvbox")
		-- end,
	},
	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	vim.o.background = "light"
		-- 	vim.cmd.colorscheme("solarized")
		-- end,
	},
}
