require('mason').setup()
require('mason-lspconfig').setup()

local M = {}

function M.setup()
	local lsp = require('lspconfig')

	function on_attach(client, bufnr)
		vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

		vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = 'single',
		})

		function create_opts(description)
			return {
				noremap = true,
				silent = true,
				buffer = bufnr,
				desc = description,
			}
		end

		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, create_opts('Go to definition'))
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, create_opts('Go to declaration'))
		vim.keymap.set('n', 'gh', vim.lsp.buf.hover, create_opts('Hover Definition'))
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, create_opts('References'))
	end

	local capabilities = require('cmp_nvim_lsp').default_capabilities()

	lsp.tsserver.setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	lsp.elixirls.setup {
		cmd = { "elixir-ls" },
		on_attach = on_attach,
		capabilities = capabilities,
	}

	lsp.sumneko_lua.setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}
end

return M

