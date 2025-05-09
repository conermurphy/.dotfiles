-- Clear search highlight on <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set(
  'n',
  '[d',
  vim.diagnostic.goto_prev,
  { desc = 'Go to previous [D]iagnostic message' }
)
vim.keymap.set(
  'n',
  ']d',
  vim.diagnostic.goto_next,
  { desc = 'Go to next [D]iagnostic message' }
)
vim.keymap.set(
  'n',
  '<leader>d',
  vim.diagnostic.open_float,
  { desc = 'Show [D]iagnostic error messages' }
)
vim.keymap.set(
  'n',
  '<leader>q',
  vim.diagnostic.setloclist,
  { desc = 'Open diagnostic [Q]uickfix list' }
)

-- Easily move between buffers
vim.keymap.set('n', '<A-[>', '<cmd>bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<A-]', '<cmd>bnext<CR>', { desc = 'Next buffer' })

-- Easily move between windows
vim.keymap.set(
  'n',
  '<C-h>',
  '<C-w><C-h>',
  { desc = 'Move focus to the left window' }
)
vim.keymap.set(
  'n',
  '<C-l>',
  '<C-w><C-l>',
  { desc = 'Move focus to the right window' }
)
vim.keymap.set(
  'n',
  '<C-j>',
  '<C-w><C-j>',
  { desc = 'Move focus to the lower window' }
)
vim.keymap.set(
  'n',
  '<C-k>',
  '<C-w><C-k>',
  { desc = 'Move focus to the upper window' }
)

-- Spelling Controls
vim.keymap.set(
  'n',
  '<leader>ss',
  '<cmd>:set spell spelloptions=camel spelllang=en_gb spellcapcheck=<CR>',
  { desc = 'Enable Spell Checking' }
)

vim.keymap.set(
  'n',
  '<leader>sd',
  '<cmd>:set nospell<CR>',
  { desc = 'Disable Spell Checking' }
)

-- NOTE: map arrow keys to Nop so they don't work in normal mode
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')
