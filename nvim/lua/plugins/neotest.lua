return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'antoinemadec/FixCursorHold.nvim',
    'conermurphy/neotest-jest',
    -- 'nvim-neotest/neotest-jest',
    -- {
    --   'nvim-neotest/neotest-jest',
    --   dir = '~/Documents/000-projects/019-neotest-jest',
    --   name = 'neotest-jest',
    --   dependencies = {
    --     'nvim-lua/plenary.nvim',
    --   },
    -- },
    'nvim-neotest/nvim-nio',
  },
  lazy = false,
  keys = {
    {
      '<leader>tn',
      function()
        require('neotest').run.run()
      end,
      desc = 'Test Nearest',
    },
    {
      '<leader>tf',
      function()
        require('neotest').run.run(vim.fn.expand('%'))
      end,
      desc = 'Test File',
    },
    {
      '<leader>tl',
      function()
        require('neotest').run.run_last()
      end,
      desc = 'Test Last',
    },
    {
      '<leader>tO',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Toggle Output Panel',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Show Summary',
    },
    {
      '<leader>to',
      function()
        require('neotest').output.open({ enter = true })
      end,
      desc = 'Show Output',
    },
    {
      '[t',
      function()
        require('neotest').jump.prev({ status = 'failed' })
      end,
      desc = 'Goto Prev Failed',
    },
    {
      ']t',
      function()
        require('neotest').jump.next({ status = 'failed' })
      end,
      desc = 'Goto Next Failed',
    },
    {
      '<leader>R',
      function()
        require('neotest').run.stop()
      end,
      desc = 'Stop',
    },
    {
      '<leader>tp',
      function()
        require('neotest').run.run(vim.fn.getcwd())
      end,
      desc = 'Test Project',
    },
  },
  config = function()
    local neotest = require('neotest')

    neotest.setup({
      adapters = {
        require('neotest-jest')({
          jestConfigFile = 'jest.config.js',
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

    neotest.setup_project('~/Documents/000-projects/000-salable/', {
      discovery = { enabled = false },
    })
  end,
}
