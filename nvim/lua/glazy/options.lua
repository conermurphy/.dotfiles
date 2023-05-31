vim.g.mapleader = " "

local options = {
  clipboard = "unnamedplus", -- Use system clipboard
  swapfile = false, -- Disables writing of swap files
  ignorecase = true, -- Ignores letter casing in patterns
  smartcase = true, -- Don't ignore case with capitals
  splitbelow = true, -- New splits will always open below
  splitright = true, -- New splits will always open to the right
  termguicolors = true, -- Enables true colours
  syntax = "on", -- Enable syntax highlighting
  shiftwidth = 2, -- Size of an indent
  tabstop = 2, -- The size of a tab in spaces
  expandtab = true, -- Use spaces instead of tabs
  number = true, -- Enable line numbers
  relativenumber = true, -- Make line numbers relative
  cursorline = true, -- Highlight line cursor is on
  smartindent = true, -- Insert indents automatically
  signcolumn = "yes", -- Always show the sign column
  wrap = false, -- Disable line wrapping
  completeopt = "menu,menuone,noselect", -- Methods of insert mode completion

  timeoutlen = 300,
  updatetime = 200,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

