return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = {
    { "nvim-tree/nvim-web-devicons", lazy = true }
  },
  init = function()
    -- Fully disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  keys = {
    { "<leader>e", function() require("oil").open_float() end, desc = "explore" },
    { "<leader>fp", function() require("oil").open(vim.fn.getcwd()) end, desc = "in project" },
  },
  config = function()
    require("oil").setup({
      keymaps = {
        -- Disable default window splitting keybinds
        ["<C-l>"] = false,
        ["<C-h>"] = false,

        -- Use the same split keybindings as Telescope
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-x>"] = "actions.select_split",
      },
    })
  end,
}

