local g = vim.g

vim.cmd([[colorscheme night-owl]])

g.mapleader = " "

local options = {
	backup = false, -- Creates a backup file
	ignorecase = true, -- Ignore casing in search patterns
	splitbelow = true, -- Force all vertical splits to appear beneath current window
	splitright = true, -- Force all horizontal splits to appear right of current window
	termguicolors = true,
	syntax = "on",
	shiftwidth = 2,
	tabstop = 2,
	expandtab = true,
	cursorline = true,
	smartindent = true,
	number = true,
	relativenumber = true,
	timeoutlen = 500,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
