local M = {}

function M.setup()
  local cmp = require('cmp')
  local ls = require('luasnip')

  function has_words_before()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

  cmp.setup({
    snippet = {
      expand = function(args)
	ls.lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping(function(fallback)
	if cmp.visible() then
	  cmp.select_next_item()
	elseif ls.expand_or_jumpable() then
	  ls.expand_or_jump()
	elseif has_words_before() then
	  cmp.complete()
	else
	  fallback()
	end
      end, { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
	if cmp.visible() then
	  cmp.select_prev_item()
	elseif ls.jumpable(-1) then
	  ls.jump(-1)
	else
	  fallback()
	end
      end, { 'i', 's' }),
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

