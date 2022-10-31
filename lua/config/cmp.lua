local M = {}

function M.setup()
  local cmp = require('cmp')

  cmp.setup({
    snippet = {
      expand = function(args)
	require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-Space>'] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    }, {
      { name = 'buffer' },
    }),
  })

  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' },
    },
  })

  cmp.setup.cmdline({ ':' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' },
    }, {
      { name = 'cmdline' },
    })
  })
end

return M

