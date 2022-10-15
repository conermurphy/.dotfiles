return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- File Exploration

  -- NvimTree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }

  local function on_attach()
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
  end

  require('nvim-tree').setup {
    on_attach = on_attach,
    open_on_setup = true,
  }

end)
