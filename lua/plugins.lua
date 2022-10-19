return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Night Owl
  use 'haishanh/night-owl.vim'

  -- Leap
  use {
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end
  }

  -- WhichKey
  use {
    'folke/which-key.nvim',
    config = function()
      require('config.which-key').setup()
    end
  }

  -- Nvim Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Web DevIcons
  use 'nvim-tree/nvim-web-devicons'

  -- Telescope
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require('config.telescope').setup()
    end
  }

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Floaterm
  use {
    'voldikss/vim-floaterm',
    config = function()
      vim.g.floaterm_height = 0.9
      vim.g.floaterm_width = 0.9
    end
  }

  -- LSPConfig
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
end)

