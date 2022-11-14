local M = {}

function M.setup()
	require("lualine").setup({
		options = {
			theme = "catppuccin",
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_c = {
				{
					"filename",
					path = 1,
				},
			},
			lualine_x = { "encoding", "filetype" },
		},
		tabline = {
			lualine_a = {
				{
					"tabs",
					mode = 2,
				},
			},
		},
	})
end

return M
