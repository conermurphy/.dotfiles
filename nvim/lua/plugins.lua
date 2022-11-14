return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- Night Owl
  use("haishanh/night-owl.vim")

  -- Leap
  use({
    'ggandor/leap.nvim',
    config = function()
      require("leap").add_default_mappings()
    end,
  })

  -- WhichKey
  use({
    "folke/which-key.nvim",
    config = function()
      require("config.which-key").setup()
    end,
  })

  -- Nvim Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("config.treesitter").setup()
    end,
  })

  -- Web DevIcons
  use("nvim-tree/nvim-web-devicons")

  -- Telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("config.telescope").setup()
    end,
  })

  -- Dirbuf
  use("elihunter173/dirbuf.nvim")

  -- Comment
  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })

  -- Floaterm
  use({
    "voldikss/vim-floaterm",
    config = function()
      vim.g.floaterm_height = 0.9
      vim.g.floaterm_width = 0.9
    end,
  })

  -- GitSigns
  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  })

  -- LSPConfig
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use({
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsp").setup()
    end,
  })
  use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("config.lsp_lines").setup()
    end,
  })
  use({
    "lukas-reineke/lsp-format.nvim",
    config = function()
      require("lsp-format").setup()
    end,
  })

  -- null-ls
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("config.null-ls").setup()
    end,
  })

  -- LuaSnip
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  -- Cmp
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use({
    "hrsh7th/nvim-cmp",
    config = function()
      require("config.cmp").setup()
    end,
  })

  -- Utils
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })

  use({
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({})
    end,
  })
end)
