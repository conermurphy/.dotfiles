return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    local wk = require('which-key')

    wk.register({
      f = { name = 'Find' },
      t = { name = 'Test' },
      h = { name = 'TS Tools' },
      g = { name = 'Git' },
    }, { prefix = '<leader>' })
  end,
}
