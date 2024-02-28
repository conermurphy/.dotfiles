return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  opts = {},
  keys = {
    { '<leader>e', function() require('oil').toggle_float() end, desc = 'Explore' },
    { '<leader>fp', function() require('oil').open(vim.fn.getcwd()) end, desc = 'In Project' },
  },
}

