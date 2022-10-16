local M = {}

function M.setup()
  local wk = require('which-key')

  local opts = {
    prefix = '<leader>',
  }

  local mappings = {
    e = { ':NvimTreeToggle<CR>', 'Toggle Explorer' },
    ['/'] = { '<Plug>--[[ (comment_toggle_linewise_current) ]]', 'Toggle comment' },
    g = { ':FloatermNew --disposable lazygit<CR>', 'Git' },
    f = {
      name = 'find',
      f = { '<cmd>Telescope find_files<CR>', 'Find file' },
      g = { '<cmd>Telescope live_grep<CR>', 'Find text' },
      r = { '<cmd>Telescope oldfiles<CR>', 'Find recent' }
    },
  }

  local v_opts = {
    prefix = '<leader>',
    mode = 'v',
  }

  local v_mappings = {
    ['/'] = { '<Plug>(comment_toggle_linewise_visual)', 'Toggle comment' }
  }

  wk.setup()

  wk.register(mappings, opts)
  wk.register(v_mappings, v_opts)
end

return M

