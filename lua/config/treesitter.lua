local M = {}

function M.setup()
  local ts = require('nvim-treesitter.configs')

  ts.setup {
    ensure_installed = {},
    highlight = {
      enable = true,
    },
  }
end

return M
