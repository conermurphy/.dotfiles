return {
  'tpope/vim-sleuth',
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup()
      require('mini.surround').setup()
      require('mini.pairs').setup()
      require('mini.statusline').setup()
      require('mini.comment').setup()
    end,
  },
  { -- Makes the colorcolumn a character so it looks prettier
    'lukas-reineke/virt-column.nvim',
    opts = {},
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      search = {
        command = 'rg',
        args = {
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
        },
        -- regex that will be used to match keywords.
        -- don't replace the (KEYWORDS) placeholder
        pattern = [[\b@?(KEYWORDS):]], -- ripgrep regex
        -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
      },
    },
  },
}
