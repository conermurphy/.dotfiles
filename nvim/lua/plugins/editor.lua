-- Enables spell checking on each file when opening them
vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufEnter' }, {
  pattern = '*',
  command = 'set spell spelloptions=camel spelllang=en_gb spellcapcheck=',
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufEnter' }, {
  pattern = '*',
  command = 'highlight SpellBad gui=bold,underdotted guisp=Orange',
})

vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile', 'BufEnter' }, {
  pattern = '*',
  command = 'highlight SpellLocal gui=bold,underdotted guisp=Cyan',
})

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
          -- NOTE: The characters shown are a workaround for MacOS.
          -- See this: https://stackoverflow.com/a/15399297

          -- ˙ = <A-h>
          -- ¬ = <A-l>
          -- ∆ = <A-j>
          -- ˚ = <A-˚>

          -- Move visual selection in Visual mode.
          left = '˙',
          right = '¬',
          down = '∆',
          up = '˚',

          -- Move current line in Normal mode
          line_left = '˙',
          line_right = '¬',
          line_down = '∆',
          line_up = '˚',
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

  -- Makes the colorcolumn a character so it looks prettier
  {
    'lukas-reineke/virt-column.nvim',
    opts = {},
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      keywords = {
        FIX = { alt = { 'fix', 'Fix' } },
        TODO = { alt = { 'todo', 'Todo' } },
        HACK = { alt = { 'hack', 'Hack' } },
        WARN = { alt = { 'warn', 'Warn' } },
        PERF = { alt = { 'perf', 'Perf' } },
        NOTE = { alt = { 'note', 'Note' } },
        TEST = { alt = { 'test', 'Test' } },
      },
    },
  },
}
