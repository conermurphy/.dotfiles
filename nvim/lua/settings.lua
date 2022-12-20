local g = vim.g

vim.cmd([[colorscheme catppuccin-mocha]])

g.mapleader = " "

local options = {
	backup = false,
	swapfile = false,
	ignorecase = true,
	splitbelow = true,
	splitright = true,
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
