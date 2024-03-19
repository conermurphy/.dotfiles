return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-jest',
  },
  keys = {
    {
      '<leader>tt',
      function()
        require('neotest').run.run(vim.fn.expand('%'))
      end,
      desc = 'Run File',
    },
    {
      '<leader>ta',
      function()
        require('neotest').run.run(vim.loop.cwd())
      end,
      desc = 'Run All Test Files',
    },
    {
      '<leader>tr',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run Nearest',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Toggle Summary',
    },
    {
      '<leader>to',
      function()
        require('neotest').output.open({ enter = false, auto_close = true })
      end,
      desc = 'Show Output',
    },
    {
      '<leader>tO',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Toggle Output Panel',
    },
    {
      '<leader>tS',
      function()
        require('neotest').run.stop()
      end,
      desc = 'Stop',
    },
  },
  config = function()
    require('neotest').setup({
      adapters = {
        require('neotest-jest')({
          jestConfigFile = 'jest.config.js',
          -- env = { CI = true },
        }),
      },
      quickfix = {
        enabled = false,
        open = false,
      },
      output_panel = {
        open = 'rightbelow vsplit | resize 30',
      },
      status = {
        virtual_text = false,
        signs = true,
      },
    })
  end,
}
