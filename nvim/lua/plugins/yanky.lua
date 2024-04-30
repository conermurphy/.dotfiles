return {
  'gbprod/yanky.nvim',
  enabled = true,
  keys = {
    {
      '<leader>yp',
      '<Plug>(YankyPreviousEntry)',
      mode = { 'n', 'x' },
      desc = 'Previous Entry',
    },
    {
      '<leader>yn',
      '<Plug>(YankyNextEntry)',
      mode = { 'n', 'x' },
      desc = 'Next Entry',
    },
    {
      'p',
      '<Plug>(YankyPutAfter)',
      mode = { 'n', 'x' },
      desc = 'Paste on line below',
    },
    {
      'P',
      '<Plug>(YankyPutBefore)',
      mode = { 'n', 'x' },
      desc = 'Paste on line above',
    },
  },
  opts = {
    highlight = {
      on_put = true,
      on_yank = true,
      timer = 100,
    },
  },
}
