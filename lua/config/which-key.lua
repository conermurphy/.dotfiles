local M = {}

function M.setup()
	local wk = require("which-key")

	local config = {
		plugins = {
			marks = false,
			registers = false,
			presets = {
				g = false,
			},
		},
	}

	local opts = {
		prefix = "<leader>",
	}

	local mappings = {
		e = { ":Telescope file_browser<CR>", "Toggle Explorer" },
		["/"] = { "<Plug>(comment_toggle_linewise_current)", "Toggle comment" },
		g = { ":FloatermNew --disposable lazygit<CR>", "LazyGit" },
		f = {
			name = "find",
			f = { "<cmd>Telescope find_files<CR>", "Find file" },
			g = { "<cmd>Telescope live_grep<CR>", "Find text" },
			r = { "<cmd>Telescope oldfiles<CR>", "Find recent" },
		},
		b = {
			name = "buffers",
			f = { "<cmd>Telescope buffers<CR>", "Find" },
		},
		p = { ":lua vim.lsp.buf.format({ async = true })<CR>", "Prettify" },
	}

	local v_opts = {
		prefix = "<leader>",
		mode = "v",
	}

	local v_mappings = {
		["/"] = { "<Plug>(comment_toggle_linewise_visual)", "Toggle comment" },
	}

	wk.setup(config)

	wk.register(mappings, opts)
	wk.register(v_mappings, v_opts)
end

return M
