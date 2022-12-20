local M = {}

function M.setup()
	local wk = require("which-key")

	local config = {}

	local opts = {
		mode = "n",
		prefix = "<leader>",
	}

	local mappings = {
		e = { "<cmd>Dirbuf<CR>", "Toggle Explorer" },
		g = { "<cmd>FloatermNew --disposable lazygit<CR>", "LazyGit" },
		f = {
			name = "find",
			f = { "<cmd>Telescope find_files<CR>", "Find file" },
			g = { "<cmd>Telescope live_grep<CR>", "Find text" },
			r = { "<cmd>Telescope oldfiles<CR>", "Find recent" },
			p = { "<cmd>Dirbuf vim.fn.getcwd()<CR>", "Find in project" },
		},
		b = {
			name = "buffers",
			f = { "<cmd>Telescope buffers<CR>", "Find" },
		},
		p = { "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", "Prettify" },
	}

	wk.setup(config)

	wk.register(mappings, opts)
end

return M
