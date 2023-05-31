return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false, -- Make sure the theme loads immediately
  priority = 1000, -- Load before anything else
  config = function()
    vim.cmd([[colorscheme catppuccin-mocha]])
  end,
}
