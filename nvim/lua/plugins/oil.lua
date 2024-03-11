return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  opts = {
    keymaps = {
      ['<C-v>'] = 'actions.select_vsplit',
      ['<C-s>'] = 'actions.select_split',
    },
  },
  keys = {
    {
      '<leader>e',
      function()
        require('oil').toggle_float()
      end,
      desc = 'Explore',
    },
    {
      '<leader>fp',
      function()
        require('oil').open(vim.fn.getcwd())
      end,
      desc = 'In Project',
    },
  },
}
