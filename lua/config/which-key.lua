local M = {}

function M.setup()
  local wk = require('which-key')

  local opts = {
    prefix = '<leader>',
  }

  local mappings = {
    e = { ':NvimTreeToggle<CR>', 'Toggle Explorer' },
    f = {
      name = 'find',
      f = { '<cmd>Telescope find_files<CR>', 'Find file' },
      g = { '<cmd>Telescope live_grep<CR>', 'Find text' },
      r = { '<cmd>Telescope oldfiles<CR>', 'Find recent' }
    },
  }

  wk.setup()
  wk.register(mappings, opts)
end

return M

