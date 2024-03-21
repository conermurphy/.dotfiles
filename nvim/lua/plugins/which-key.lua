return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function()
    local wk = require('which-key')

    wk.register({
      f = { name = 'Find' },
    }, { prefix = '<leader>' })

    wk.register({
      t = { name = 'Test' },
    }, { prefix = '<leader>' })

    wk.register({
      g = { name = 'Git' },
    }, { prefix = '<leader>' })
  end,
}
