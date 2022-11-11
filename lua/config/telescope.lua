local M = {}

function M.setup()
  local ts = require("telescope")
  ts.setup({})

  ts.load_extension("fzf")
end

return M
