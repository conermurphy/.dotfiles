return {
  'ibhagwan/fzf-lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    { 'junegunn/fzf', build = './install --bin' },
  },
  config = function()
    require('fzf-lua').setup()
  end,
  keys = {
    {
      '<leader>fk',
      function()
        require('fzf-lua').keymaps()
      end,
      desc = 'Keymaps',
    },
    {
      '<leader>fh',
      function()
        require('fzf-lua').help_tags()
      end,
      desc = 'Help',
    },
    {
      '<leader>ff',
      function()
        require('fzf-lua').files()
      end,
      desc = 'Files',
    },
    {
      '<leader>fg',
      function()
        require('fzf-lua').live_grep()
      end,
      desc = 'Grep',
    },
    {
      '<leader>fr',
      function()
        require('fzf-lua').live_grep_resume()
      end,
      desc = 'Previous Grep',
    },
    {
      '<leader>fw',
      function()
        require('fzf-lua').grep_cword()
      end,
      desc = 'Grep Word',
    },
  },
}
