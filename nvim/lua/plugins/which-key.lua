return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    local wk = require('which-key')

    wk.add({
      { '<leader>1', hidden = true },
      { '<leader>2', hidden = true },
      { '<leader>3', hidden = true },
      { '<leader>4', hidden = true },
      { '<leader>5', hidden = true },
      { '<leader>f', group = 'Find' },
      { '<leader>g', group = 'Git' },
      { '<leader>l', group = 'TS Tools' },
      { '<leader>s', group = 'Spelling' },
      { '<leader>t', group = 'Test' },
    })
  end,
}
