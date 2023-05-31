vim.g.mapleader = " "

-- Improved window movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = true})
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = true})
vim.keymap.set("n", "<C-n>", "<Cmd>tab split<CR>")

-- Remove highlight
vim.keymap.set("n", "<Esc>", "<Cmd>nohl<CR>")
