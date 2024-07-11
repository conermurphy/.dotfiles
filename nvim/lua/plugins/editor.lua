-- Enables spell checking on each file when opening them
vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufEnter' }, {
  pattern = '*',
  command = 'set spell spelloptions=camel spelllang=en_gb spellcapcheck=',
})

vim.cmd('highlight SpellBad gui=bold,underdotted guisp=Orange')
vim.cmd('highlight SpellLocal gui=bold,underdotted guisp=Cyan')

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
          left = '<A-LEFT>',
          right = '<A-RIGHT>',
          down = '<A-DOWN>',
          up = '<A-UP>',

          -- Move current line in Normal mode
          line_left = '<A-LEFT>',
          line_right = '<A-RIGHT>',
          line_down = '<A-DOWN>',
          line_up = '<A-UP>',
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

  {
    'windwp/nvim-ts-autotag',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({})
    end,
    lazy = true,
    event = 'VeryLazy',
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
