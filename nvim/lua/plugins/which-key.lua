return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    local config = {}

    local opts = {
      mode = "n",
      prefix = "<leader>",
    }

    local mappings = {
      f = { name = "find" },
      ["\\"] = {
        function()
          vim.cmd("vsplit")
        end,
        "vertical split"
      },
      ["-"] = {
        function()
          vim.cmd("split")
        end,
        "horizontal split"
      }
    }

    wk.setup(config)

    wk.register(mappings, opts)
  end
}
