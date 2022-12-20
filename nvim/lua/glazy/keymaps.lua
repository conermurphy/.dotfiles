-- Window navigation and manipulation.
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-n>", "<cmd>tab split<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>nohl<CR>")

-- Commenting
vim.keymap.set("n", "<C-_>", "<Plug>(comment_toggle_linewise_current)")
vim.keymap.set("v", "<C-_>", "<Plug>(comment_toggle_linewise_visual)")

-- Tabs
vim.keymap.set("n", "<Tab>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>tabprevious<CR>")
