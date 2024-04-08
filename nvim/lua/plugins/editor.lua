return {
  'tpope/vim-sleuth',
  {
    'echasnovski/mini.nvim',
    dependencies = {
      {
        'JoosepAlviste/nvim-ts-context-commentstring',
        opts = {
          enable_autocmd = false,
        },
      },
    },
    config = function()
      require('mini.ai').setup()
      require('mini.surround').setup()
      require('mini.pairs').setup()
      require('mini.move').setup({
        mappings = {
          -- Move visual selection in Visual mode.
          left = '<C-S-h>',
          right = '<C-S-l>',
          down = '<C-S-j>',
          up = '<C-S-k>',

          -- Move current line in Normal mode
          line_left = '<C-S-h>',
          line_right = '<C-S-l>',
          line_down = '<C-S-j>',
          line_up = '<C-S-k>',
        },

        -- Options which control moving behavior
        options = {
          -- Automatically reindent selection during linewise vertical move
          reindent_linewise = true,
        },
      })
      require('mini.statusline').setup()
      require('mini.comment').setup({
        options = {
          custom_commentstring = function()
            return require('ts_context_commentstring.internal').calculate_commentstring()
              or vim.bo.commentstring
          end,
        },
      })
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
