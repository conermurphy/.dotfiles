local M = {}

function M.setup()
	local nls = require("null-ls")

	nls.setup({
		sources = {
			nls.builtins.formatting.stylua,
			nls.builtins.formatting.prettierd,
		},
		on_attach = require("lsp-format").on_attach,
	})
end

return M
