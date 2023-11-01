return {
	"sainnhe/everforest",
	lazy = false, -- Make sure the theme loads immediately
	priority = 1000, -- Load before anything else
	config = function()
		vim.g.everforest_background = "medium"
		vim.cmd([[colorscheme everforest]])
	end,
}
