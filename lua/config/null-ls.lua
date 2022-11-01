local M = {}

function M.setup()
	local nls = require('null-ls')

	nls.setup {
		sources = {
			nls.builtins.formatting.prettierd,
		},
	}
end

return M

