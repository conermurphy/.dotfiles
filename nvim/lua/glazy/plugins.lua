return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Catppuccin
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})

	use("ggandor/leap.nvim")

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- WhichKey
	use("folke/which-key.nvim")

	-- Nvim Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("nvim-tree/nvim-web-devicons")

	-- Telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("elihunter173/dirbuf.nvim")
	use("numToStr/Comment.nvim")
	use("voldikss/vim-floaterm")
	use("lewis6991/gitsigns.nvim")

	-- LSPConfig
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("https://git.sr.ht/~whynothugo/lsp_lines.nvim")
	use("lukas-reineke/lsp-format.nvim")

	use("jose-elias-alvarez/null-ls.nvim")

	-- LuaSnip
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Cmp
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	-- Utils
	use("windwp/nvim-autopairs")
	use("kylechui/nvim-surround")
end)
