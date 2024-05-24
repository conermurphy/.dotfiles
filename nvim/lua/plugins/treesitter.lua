return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'html',
        'lua',
        'vim',
        'vimdoc',
        'typescript',
        'tsx',
        'javascript',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = true, -- Auto close on trailing </
      },
    })
  end,
}
