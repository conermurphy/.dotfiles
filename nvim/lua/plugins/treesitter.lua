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
      autotag = {
        enable = true,
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
