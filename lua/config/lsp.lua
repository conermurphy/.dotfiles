require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lspconfig')

function on_attach(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  function create_opts(description)
    return {
      noremap = true,
      silent = true,
      buffer = bufnr,
      desc = description,
    }
  end

  local bufopts = { noremap = true, silent = true, buffer = bufnr }

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

