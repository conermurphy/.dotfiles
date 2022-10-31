local M = {}

function M.setup()
    local ts = require('telescope')
    ts.setup {
      extensions = {
				file_browser = {
					hijack_netrw = true,
				},
      },
    }

    ts.load_extension("file_browser")
		ts.load_extension('fzf')
  end

  return M

