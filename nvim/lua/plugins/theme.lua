return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- Set the colorscheme
    vim.cmd('colorscheme tokyonight-storm')
  end,
}
