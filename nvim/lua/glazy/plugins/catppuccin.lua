local M = {}

function M.setup()
	require("catppuccin").setup({
		integrations = {
			which_key = true,
			telescope = true,
			leap = true,
			mason = true,
			cmp = true,
		},
	})
end

return M
