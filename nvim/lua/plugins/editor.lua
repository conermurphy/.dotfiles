return {
  'tpope/vim-sleuth',
  {
    'echasnovski/mini.nvim',
    config = function ()
      require('mini.ai').setup()
      require('mini.surround').setup()
      require('mini.statusline').setup()
    end
  }
}
