return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "file" },
      { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "grep" },
      { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "recent" },
      { "<leader>fd", function() require("telescope.builtin").diagnostics({ bufnr = 0 }) end, desc = "diagnostics" },
      { "<leader>fD", function() require("telescope.builtin").diagnostics() end, desc = "project diagnostics" },
    },
    config = function()
      require("telescope").setup()
    end,
  },
}
